<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SatwaController;
use App\Http\Controllers\KeeperController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\KandangController;
use App\Http\Controllers\ZonaController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\BahanBakuController;
use App\Http\Controllers\kurirController;
use App\Http\Controllers\MenuController;
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
//Route Mastersatwa
Route::get('/mastersatwa', [SatwaController::class, 'master'])->name('mastersatwa.index');
Route::any('/storemastersatwa', [SatwaController::class, 'storemastersatwa']);
Route::get('/addmaster', [SatwaController::class, 'addmaster']);
Route::any('/mastersatwa-edit/{id}', [SatwaController::class, 'editmaster']);
Route::any('/mastersatwa-delete/{id}', [SatwaController::class, 'deletemaster']);
//Route Satwa

//satwa-masuk
Route::get('/satwa', [SatwaController::class, 'index'])->name('satwa.index');;
Route::any('/satwastore', [SatwaController::class, 'store']);
Route::get('/satwa/add', [SatwaController::class, 'add']);
Route::any('/satwa-edit/{id}', [SatwaController::class, 'edit']);
Route::any('/satwa-delete/{id}', [SatwaController::class, 'delete']);

//satwa-keluar
Route::get('/satwakeluar', [SatwaController::class, 'index-keluar'])->name('satwakeluar.index');;
Route::any('/satwakeluarstore', [SatwaController::class, 'store-keluar']);
Route::get('/satwakeluar-add', [SatwaController::class, 'add-keluar']);
Route::any('/satwakeluar-edit/{id}', [SatwaController::class, 'edit-keluar']);
Route::any('/satwakeluar-delete/{id}', [SatwaController::class, 'delete-keluar']);

//satwa-mati
Route::get('/satwamati', [SatwaController::class, 'index-mati'])->name('satwamati.index');;
Route::any('/satwamatistore', [SatwaController::class, 'store-mati']);
Route::get('/satwamati/add', [SatwaController::class, 'addmati']);
Route::any('/satwamati-edit/{id}', [SatwaController::class, 'editmati']);
Route::any('/satwamati-delete/{id}', [SatwaController::class, 'deletemati']);


Route::any('/selectmastersatwa', [SatwaController::class, 'selectMastersatwa']);
Route::any('/selectexhibit', [SatwaController::class, 'selectExhibit']);
Route::any('/selectholding', [SatwaController::class, 'selectHolding']);

//Route Keeper
Route::get('/keeper', [KeeperController::class, 'index'])->name('keeper.index');
Route::any('/keeperstore', [KeeperController::class, 'store']);
Route::get('/keeper-add', [KeeperController::class, 'add']);
Route::any('/keeper-edit/{id}', [KeeperController::class, 'edit']);
Route::any('/keeper-delete/{id}', [KeeperController::class, 'delete']);

/*Route::group(['middleware' => ['role:super-admin']], function () {
    //Route Zona
Route::get('/zona', [ZonaController::class, 'index'])->name('zona.index');
Route::any('/zonastore', [ZonaController::class, 'store']);
Route::get('/zona-add', [ZonaController::class, 'add']);
Route::any('/zona-edit/{id}', [ZonaController::class, 'edit']);
Route::any('/zona-delete/{id}', [ZonaController::class, 'delete']);
});*/

 //Route Zona
Route::get('/zona', [ZonaController::class, 'index'])->name('zona.index');
Route::any('/zonastore', [ZonaController::class, 'store']);
Route::get('/zona-add', [ZonaController::class, 'add']);
Route::any('/zona-edit/{id}', [ZonaController::class, 'edit']);
Route::any('/zona-delete/{id}', [ZonaController::class, 'delete']);

// Route Users
Route::get('/users', [UsersController::class, 'index'])->name('user.index');
Route::any('/usersstore', [UsersController::class, 'store']);
Route::get('/users-add', [UsersController::class, 'add']);
Route::any('/users-edit/{id}', [UsersController::class, 'edit']);
Route::any('/users-delete/{id}', [UsersController::class, 'delete']);

// Route Kandang
Route::get('/kandang', [KandangController::class, 'index'])->name('kandang.index');
Route::any('/kandangstore', [KandangController::class, 'store']);
Route::get('/kandang-add', [KandangController::class, 'add']);
Route::get('/kandang-edit/{id}', [KandangController::class, 'edit']);
Route::get('/kandang-delete/{id}', [KandangController::class, 'delete']);
Route::any('/selectkeeper', [KandangController::class, 'selectKeeper']);
Route::any('/selectzona', [KandangController::class, 'selectZona']);


//Route Kurir
Route::get('/kurir', [kurirController::class, 'index'])->name('kurir.index');
Route::any('/kurirstore', [kurirController::class, 'store']);
Route::get('/kurir-add', [kurirController::class, 'add']);
Route::any('/kurir-edit/{id}', [kurirController::class, 'edit']);
Route::any('/kurir-delete/{id}', [kurirController::class, 'delete']);



//Route Bahan Baku
Route::get('/bahanbaku', [BahanBakuController::class, 'index'])->name('bahanbaku.index');
Route::any('/bahanbakustore', [BahanBakuController::class, 'store']);
Route::get('/bahanbaku-add', [BahanBakuController::class, 'add']);
Route::any('/bahanbaku-edit/{id}', [BahanBakuController::class, 'edit']);
Route::any('/bahanbaku-delete/{id}', [BahanBakuController::class, 'delete']);
Route::any('/bahanbaku-transaction/{id}', [BahanBakuController::class, 'transaksi']);
Route::any('/bahanbakustoretransaction', [BahanBakuController::class, 'storetransaction']);
Route::get('/transaksibahanbaku/{id}', [BahanBakuController::class, 'indextransactionbahanbaku'])->name('transaksibahanbaku.index/{id}');





//Route Menu
Route::get('/menu', [MenuController::class, 'index'])->name('menu.index');
Route::any('/menustore', [MenuController::class, 'store']);
Route::get('/menu-add', [MenuController::class, 'add']);
Route::any('/menu-edit/{id}', [MenuController::class, 'edit']);
Route::any('/menu-delete/{id}', [MenuController::class, 'delete']);
