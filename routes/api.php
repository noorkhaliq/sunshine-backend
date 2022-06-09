<?php

use App\Http\Controllers\Api\AboutController;
use App\Http\Controllers\Api\DashboardController;
use App\Http\Controllers\Api\ImageController;
use App\Http\Controllers\Api\ProductsController;
use App\Http\Controllers\Api\SocialController;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'v1'], function() {

        Route::get('dashboard',  [DashboardController::class, 'index']);
        Route::get('settings',   [SocialController::class,  'index']);
        //Route::get('about',      [AboutController::class,     'about']);
        Route::get('products',   [ProductsController::class,  'index']);
        //Route::get('images',     [ImageController::class,     'images']);

});
