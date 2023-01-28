<?php

namespace App\Repositories;

use Illuminate\Http\Request;

interface RaliwayLineRepositoryInterface
{
    public function getLines(Request $request);
}
