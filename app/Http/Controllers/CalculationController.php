<?php

namespace App\Http\Controllers;

use App\BasePrice;
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
        $this->dateFrom = $request->dateFrom;
        $this->dateTo = $request->dateTo;
        $this->adults = $request->adults;
        $this->teens = $request->teens;
        $this->children = $request->children;

        $discount = 10;
        $touristTax = 5;
        $totalCost = 295;
        $agencyCost = 200;
        $spotCost = 10;
        $res = array("baseCost" => $this->findBaseCost(), "discount" => $discount, "touristTax" => $touristTax, "totalCost" => $totalCost, "agencyCost" => $agencyCost, "spotCost" => $spotCost, "dateFrom" => $this->dateFrom, "dateTo" => $this->dateTo);

        return response()->json($res);
    }

    private function findBaseCost()
    {
        $betweenBaseCosts = BasePrice::where("unit_id", $this->unitId)->where("to", ">=", $this->dateFrom)->where("from", "<=", $this->dateTo)->get();
        return $betweenBaseCosts;
    }


}
