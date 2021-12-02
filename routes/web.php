<?php

use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Route;


Route::get('/login', [AuthController::class,"loginView"]);
Route::get('/register', [AuthController::class,"registerView"]);
Route::post('/do-login', [AuthController::class,"doLogin"]);
Route::post('/do-register', [AuthController::class,"doRegister"]);
Route::get('/dashboard', [AuthController::class,"dashboard"]);
Route::get('/logout', [AuthController::class,"logout"]);





Route::get('/', function () {
    return view('welcome');
});
