<?php

namespace App\Http\Controllers;

use App\BasePrice;
use App\Discount;
use DateTime;
use Illuminate\Http\Request;

class CalculationController extends Controller
{

    private $propertyId;
    private $unitId;
    private $dateFrom;
    private $dateTo;
    private $adults;
    private $teens;
    private $children;

    /**
     * Calculate the cost
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function calculate(Request $request)
    {

        $this->propertyId = $request->propertyId;
        $this->unitId = $request->unitId;

        //todo: check if dates are in order and appear in designated intervals
        $this->dateFrom = $request->dateFrom;
        $this->dateTo = $request->dateTo;

        //todo: check if minimum person requirements are met
        $this->adults = $request->adults;
        $this->teens = $request->teens;
        $this->children = $request->children;


        $baseCost = $this->findBaseCost();
        $discountAll = $this->findDiscount();
        $discountPercent = $discountAll["percent"];

        //todo: placeholders

        $touristTax = 5;
        $totalCost = 295;
        $agencyCost = 200;
        $spotCost = 10;

        $res = array("baseCost" => $baseCost, "discount" => $discountAll, "touristTax" => $touristTax, "totalCost" => $totalCost, "agencyCost" => $agencyCost, "spotCost" => $spotCost, "dateFrom" => $this->dateFrom, "dateTo" => $this->dateTo);

        return response()->json($res);
        //todo: respond with error when errors are found
    }

    private function findBaseCost()
    {
        $betweenBaseCosts = BasePrice::where("unit_id", $this->unitId)->where("to", ">=", $this->dateFrom)->where("from", "<=", $this->dateTo)->get();

        $costsSize = $betweenBaseCosts->count();

        if ($costsSize == 0) {
            //no base cost brackets found, todo: throw error
            return 0;
        } else if ($costsSize == 1) {
            //only 1 base cost bracket - cost = days * price
            return $this->calculatePriceByDays($betweenBaseCosts[0]);
        } else {
            //2 base cost brackets - totalCost = bracket1TimeSpent*price1 + bracket2TimeSpent*price2
            return $this->calculatePriceByBrackets($betweenBaseCosts[0], $betweenBaseCosts[1]);
        }
    }

    private function calculatePriceByDays($bracket)
    {
        //user's selected dates
        $userFrom = new DateTime($this->dateFrom);
        $userTo = new DateTime($this->dateTo);
        $userTo->modify("+1 day");//+1 day to include last day

        //all days spent in current bracket
        $days = $userFrom->diff($userTo)->d;//todo: test if days gives better result than d
        //todo: check if days are at least bracket minimum days
        return $days * floatval($bracket->price);
    }

    private function calculatePriceByBrackets($bracket, $bracket2)
    {
        //user's selected dates
        $userFrom = new DateTime($this->dateFrom);
        $userTo = new DateTime($this->dateTo);


        //baseCost bracket dates
        $bracket1From = new DateTime($bracket->from);
        $bracket1To = new DateTime($bracket->to);
        $bracket2From = new DateTime($bracket2->from);
        $bracket2To = new DateTime($bracket2->to);

        $days1 = $userFrom->diff($bracket1To)->d + 1;//+1 day to include last day
        $days2 = $userTo->diff($bracket2From, true)->d;
        //totalCost = bracket1TimeSpent*price1 + bracket2TimeSpent*price2

        //todo: check if days are at least bracket minimum days for each bracket
        return $days1 * floatval($bracket->price) + $days2 * floatval($bracket2->price);

    }

    private function findDiscount()
    {
        $userFrom = new DateTime($this->dateFrom);
        $now = new DateTime();
        //number of days before booking date
        $diff = $userFrom->diff($now, true)->days;
        //get all eligible discounts for the current property - depending on date
        $firstMinuteDiscounts = Discount::where("property_id", $this->propertyId)->where("type", "first-minute")->where("days", "<", $diff)->orderBy("percent", "desc")->first();
        $lastMinuteDiscounts = Discount::where("property_id", $this->propertyId)->where("type", "last-minute")->where("days", ">", $diff)->orderBy("percent", "desc")->first();

        if ($firstMinuteDiscounts) {
            $discount = array("type" => $firstMinuteDiscounts->type, "percent" => $firstMinuteDiscounts->percent);
            return $discount;
        } else if ($lastMinuteDiscounts) {
            $discount = array("type" => $lastMinuteDiscounts->type, "percent" => $lastMinuteDiscounts->percent);
            return $discount;
        } else {
            $discount = array("type" => "none", "percent" => 0, "diff" => $diff);
            return $discount;
        }


    }

}
