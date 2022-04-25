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

Route::middleware('auth:sanctum')->group(function () {
    Route::post('/purchase', [App\Http\Controllers\API\AuthController::class, 'purchase']);
});

Route::post('/register', [App\Http\Controllers\API\AuthController::class, 'register']);


Route::post('/android_mock', [App\Http\Controllers\PlatformController::class, 'android_mock']);
Route::post('/ios_mock', [App\Http\Controllers\PlatformController::class, 'ios_mock']);
