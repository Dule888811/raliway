<?php

namespace App\Http\Controllers;
use App\Models\City;
use App\Models\RaliwayLine;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RaliwayLineController extends Controller
{
    public function getLines(Request $request)
    {
      /*  foreach(RaliwayLine::all() as $raliwayline)
        {
            if($request->from == City::find($raliwayline->city_id)->name && $raliwayline->distance == 0)
            {
                dd(DB::table('raliway_lines')->where('train',$raliwayline->train)->where('distance',0)->select('train')->get());

            }
        } */
    }
}
