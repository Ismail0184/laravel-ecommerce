<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\APIController;

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

Route::get('/all-product', [APIController::class, 'getAllProduct']);
Route::get('/all-category', [APIController::class, 'getAllCategory']);
Route::get('/all-category-product/{id}', [APIController::class, 'getCategoryProduct']);
Route::get('/get-product-by-id/{id}', [APIController::class, 'getProductById']);


