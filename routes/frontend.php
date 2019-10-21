<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
|
*/

/* Home */
Route::get('/', 'Frontend\HomeController@index');
Route::post('/signin', 'Frontend\HomeController@signin');
