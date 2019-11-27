<?php

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


Route::group(['middleware' => 'ValidateKemhan'], function () {

	Route::get('cms/kemhan/dashboard', 'Backend\KemhanController@index');
	Route::get('cms/kemhan/logout', 'Backend\KemhanController@signout');

	//Anggaran
	Route::get('cms/kemhan/anggaran', 'Backend\AnggaranController@anggaran');

});

Route::group(['middleware' => 'ValidateUO'], function () {

	Route::get('cms/uo/dashboard', 'Backend\UoController@index');
	Route::get('cms/uo/logout', 'Backend\UoController@signout');

});

Route::group(['middleware' => 'ValidateKotama'], function () {

	Route::get('cms/kotama/dashboard', 'Backend\KemhanController@index');
	Route::get('cms/kotama/logout', 'Backend\KemhanController@signout');

});

Route::group(['middleware' => 'ValidateSatker'], function () {

	Route::get('cms/satker/dashboard', 'Backend\KemhanController@index');
	Route::get('cms/satker/logout', 'Backend\KemhanController@signout');

});