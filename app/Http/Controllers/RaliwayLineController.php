<?php

namespace App\Http\Controllers;
use App\Models\City;
use App\Models\RaliwayLine;
use App\Repositories\RaliwayLineRepository;
use App\Repositories\RaliwayLineRepositoryInterface;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RaliwayLineController extends Controller
{
    private $raliwayLineRepository;
    public function __construct(RaliwayLineRepositoryInterface $raliwayLineRepository)
    {
        $this->raliwayLineRepository = $raliwayLineRepository;
    }
    public function getLines(Request $request)
    {

      /*  $raliwaylines = function(Request $request)
        {
            foreach(RaliwayLine::all() as $raliwayline)
            {
                if($request->from == $raliwayline->city_name )
                {
                    $raliwaylines[] = $raliwayline;
                }
            }
            return $raliwaylines;
        } ;
        foreach($raliwaylines($request) as $line)
        {
               $lines[] = DB::table('raliway_lines')->where('train',$line->train)->where('city_name',$request->to)->get();
        } */
        $lines = $this->raliwayLineRepository->getLines($request);
        return view('welcome')->with(['lines' => $lines]);
    }
}
