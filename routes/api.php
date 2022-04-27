<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//use api version
Route::prefix('v1')->group(function () {

    Route::middleware('auth:sanctum')->group(function () {
        Route::post('/purchase', [App\Http\Controllers\API\AuthController::class, 'purchase']);
        Route::post('/check_subsciption', [App\Http\Controllers\API\AuthController::class, 'checkSubsciption']);
    });

    Route::post('/register', [App\Http\Controllers\API\AuthController::class, 'register']);

    //purchase mock address
    Route::post('/android_mock', [App\Http\Controllers\PlatformController::class, 'android_mock']);
    Route::post('/ios_mock', [App\Http\Controllers\PlatformController::class, 'ios_mock']);

    //worker mock address
    Route::post('/ios_control', [App\Http\Controllers\PlatformController::class, 'ios_control']);
    Route::post('/android_control', [App\Http\Controllers\PlatformController::class, 'android_control']);

});

