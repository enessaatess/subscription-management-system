<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Http;
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

Route::get('/test', function () {
    $receipt = rand(10000000, 99999999);
    $response = Http::post('http://127.0.0.1:8001/api/ios_control',
            [
                'receipt' => $receipt,
            ]
        );
        dd($response->json());
});
