<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LaundryAppController;
use App\Http\Controllers\AuthController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::resource('/',LaundryAppController::class);
Route::get('',[LaundryAppController::class,'index'])->name('dashboard');
Route::get('Administrator',[LaundryAppController::class, 'admin'])->name('admin');

//DAFTAR TRANSAKSI
Route::get('daftarTransaksi',[LaundryAppController::class, 'daftarTransaksi'])->name('public');
//RIWAYAT TRANSAKSI 
Route::get('riwayat',[LaundryAppController::class,'riwayat'])->name('riwayat');

//input data laundry
Route::get('pesan',[LaundryAppController::class,'pesan'])->name('pesan');
Route::post('store',[LaundryAppController::class,'store']);

//cek data laundry
Route::get('cek',[LaundryAppController::class,'cek'])->name('cek');
Route::get('/cek/{id_pesan}/edit',[LaundryAppController::class,'edit']);
Route::put('/cek/{id_pesan}',[LaundryAppController::class,'update']);

//cek from owner
Route::get('/edit/{id_pesan}/editFromOwner',[LaundryAppController::class,'editFromOwner']);
Route::put('/edit/{id_pesan}',[LaundryAppController::class,'updateFromOwner']);

Route::get('about-us',[LaundryAppController::class,'aboutUs'])->name('about-us');

//login dan logout
Route::get('user',[AuthController::class, 'index'])->name('user');
Route::post('login',[AuthController::class, 'login']);
Route::get('logout',[AuthController::class, 'logout'])->name('logout');

//create data
Route::get('register',[AuthController::class, 'register'])->name('register');
Route::post('create',[AuthController::class, 'create']);

//Delete Data
Route::delete('/{id_pesan}',[LaundryAppController::class,'destroy'])->name('destroy');
