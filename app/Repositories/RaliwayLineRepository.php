<?php

namespace App\Repositories;

use App\Models\RaliwayLine;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use function App\Http\Controllers;

class RaliwayLineRepository implements RaliwayLineRepositoryInterface
{
    public function getLines(Request $request)
    {

        $raliwaylines = function (Request $request) {
            foreach (RaliwayLine::all() as $raliwayline) {
                if ($request->from == $raliwayline->city_name) {
                    $raliwaylines[] = $raliwayline;
                }
            }
            return $raliwaylines;
        };
        foreach ($raliwaylines($request) as $line) {
            $lines[] = DB::table('raliway_lines')->where('train', $line->train)->where('city_name', $request->to)->get();
        }
        return $lines;
    }
}
