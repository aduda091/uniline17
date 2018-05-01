<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CalculationController extends Controller
{


    /**
     * Calculate the cost
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function calculate(Request $request)
    {
        $propertyId = $request->propertyId;
        $unitId = $request->unitId;
        $dateFrom = $request->dateFrom;
        $dateTo = $request->dateTo;
        $adults = $request->adults;
        $teens = $request->teens;
        $children = $request->children;

        $baseCost = 200;
        $discount = 10;
        $touristTax = 5;
        $totalCost = 295;
        $agencyCost = 200;
        $spotCost = 10;
        $res = array("baseCost"=>$baseCost, "discount"=>$discount, "touristTax"=>$touristTax, "totalCost"=>$totalCost, "agencyCost"=>$agencyCost, "spotCost"=>$spotCost);

        return response()->json($res);
    }






}
