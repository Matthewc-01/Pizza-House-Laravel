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
    return view('home');
});

Route::get('/pizza','PizzaController@index');
Route::get('/pizza/create','PizzaController@create');
Route::post('/pizza','PizzaController@store');
Route::get('/pizza/{id}','PizzaController@show');
