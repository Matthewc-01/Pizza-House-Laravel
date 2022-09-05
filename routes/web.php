<?php

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

Route::get('/pizza','PizzaController@index')->middleware('auth');
Route::get('/pizza/create','PizzaController@create');
Route::post('/pizza','PizzaController@store');
Route::get('/pizza/{id}','PizzaController@show')->middleware('auth');
Route::delete('/pizza/{id}','PizzaController@destroy')->middleware('auth');

Auth::routes([
    "register" => false
]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
