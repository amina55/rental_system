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

Route::group(['prefix' => 'add'], function (){

    Route::post('search', 'AddController@search')->name('add.search');
    Route::get('activate/{add}', 'AddController@activate')->name('add.activate');
    Route::get('deactivate/{add}', 'AddController@deactivate')->name('add.deactivate');
    Route::get('delete/{add}', 'AddController@delete')->name('add.delete');
});


Route::resource('add', 'AddController', ['only', ['index', 'create', 'store', 'edit', 'update', 'show']]);
Route::get('/user/adds', 'AddController@userAddList')->name('user.add.list');



