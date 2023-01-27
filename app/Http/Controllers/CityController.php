<?php

namespace App\Http\Controllers;

use App\City;

class CityController extends Controller
{
    public function getCities()
    {
        $cities = City::all();
         foreach($cities as $city)
    {
        $citiesName[] = $city->name;
    }
        return response()->json($citiesName);
    }
}
