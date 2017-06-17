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


Route::get('/', 'AddController@index')->name('add.index');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::post('/add/search', 'AddController@search')->name('add.search');

Route::resource('add', 'AddController', ['only', ['index', 'create', 'store', 'edit', 'update', 'show']]);
/*Route::get('/add/create', 'AddController@create')->name('add.create');
Route::post('/add/store', 'AddController@store')->name('add.store');
Route::get('/add/edit/{deal}', 'AddController@edit')->name('add.edit');
Route::put('/add/update/{deal}', 'AddController@update')->name('add.update');*/


Route::get('/user/adds', 'AddController@userAddList')->name('user.add.list');



