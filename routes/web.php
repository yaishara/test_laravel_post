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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::middleware(['auth'])->group(function () { 

    Route::get('admins', function () {
        return view('admin.dashboard');
    })->name('admin.adashboard');

    Route::prefix('admins')->group(function () {
    Route::resource('post', 'PostController');
	});

     Route::prefix('admins')->group(function () {
    Route::resource('school', 'SchoolController');
	});

     
});