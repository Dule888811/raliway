<?php

use App\Http\Controllers\CityController;
use App\Http\Controllers\RaliwayLineController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get(
    '/cities',
    [CityController::class, 'getCities']
)->name('cities');
Route::get(
    '/line',
    [RaliwayLineController::class, 'getLines']
)->name('line');
