<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\UsersController;
use App\Http\Controllers\AuthController;

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\BahanBakuController;
use App\Http\Controllers\kurirController;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\KeranjangController;
use App\Http\Controllers\TransaksiController;
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

/*Route::get('/', function () {
    return view('dashboard');
})->middleware('auth');*/
Route::get('/', [DashboardController::class, 'index'])->middleware('auth');
Route::get('/login', [AuthController::class, 'index'])->name('login');
Route::post('/login', [AuthController::class, 'authenticate']);
Route::get('/logout', [AuthController::class, 'logout'])->middleware('auth');

// Route Users
Route::get('/users', [UsersController::class, 'index'])->name('user.index');
Route::any('/usersstore', [UsersController::class, 'store']);
Route::get('/users-add', [UsersController::class, 'add']);
Route::any('/users-edit/{id}', [UsersController::class, 'edit']);
Route::any('/users-delete/{id}', [UsersController::class, 'delete']);
Route::any('/selectuser', [UsersController::class, 'selectUser']);


//Route Kurir
Route::get('/kurir', [kurirController::class, 'index'])->name('kurir.index');
Route::any('/kurirstore', [kurirController::class, 'store']);
Route::get('/kurir-add', [kurirController::class, 'add']);
Route::any('/kurir-edit/{id}', [kurirController::class, 'edit']);
Route::any('/kurir-delete/{id}', [kurirController::class, 'delete']);
Route::any('/selectkurir', [kurirController::class, 'selectKurir']);



//Route Bahan Baku
Route::get('/bahanbaku', [BahanBakuController::class, 'index'])->name('bahanbaku.index');
Route::any('/bahanbakustore', [BahanBakuController::class, 'store']);
Route::get('/bahanbaku-add', [BahanBakuController::class, 'add']);
Route::any('/bahanbaku-edit/{id}', [BahanBakuController::class, 'edit']);
Route::any('/bahanbaku-delete/{id}', [BahanBakuController::class, 'delete']);
Route::any('/bahanbaku-transaction/{id}', [BahanBakuController::class, 'transaksi']);
Route::any('/bahanbakustoretransaction', [BahanBakuController::class, 'storetransaction']);
//SRoute::get('/transaksibahanbaku/{id}', [BahanBakuController::class, 'indextransactionbahanbaku'])->name('transaksibahanbaku.index/{id}');





//Route Menu
Route::get('/menu', [MenuController::class, 'index'])->name('menu.index');
Route::any('/menustore', [MenuController::class, 'store']);
Route::get('/menu-add', [MenuController::class, 'add']);
Route::any('/menu-edit/{id}', [MenuController::class, 'edit']);
Route::any('/menu-delete/{id}', [MenuController::class, 'delete']);




//Route Transaksi
Route::get('/transaksi', [TransaksiController::class, 'index'])->name('transaksi.index');
Route::any('/transaksistore', [TransaksiController::class, 'store']);
Route::get('/transaksi-add', [TransaksiController::class, 'add']);
Route::any('/transaksi-edit/{id}', [TransaksiController::class, 'edit']);
Route::any('/transaksi-delete/{id}', [TransaksiController::class, 'delete']);

Route::any('/chooseproduct', [TransaksiController::class, 'choose']);
Route::any('/cart', [TransaksiController::class, 'cart'])->name('transaksi.cart');
Route::any('/add-to-cart/{id}', [TransaksiController::class, 'addToCart']);


//Keranjang 
/*Route::get('/produk', [KeranjangController::class, 'index']);
Route::get('/cart', [KeranjangController::class, 'cart'])->name('keranjang.cart');

Route::get('/add-to-cart/{id}', [KeranjangController::class, 'addToCart']);
Route::patch('/update-cart', [KeranjangController::class, 'update']);
Route::delete('remove-from-cart', [KeranjangController::class, 'remove']);*/

