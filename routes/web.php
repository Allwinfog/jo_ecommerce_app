<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CommentsController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\ProductController;



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

Route::get('/', [HomeController::class,'index'])->name('home');


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

Route::get('/redirect', [HomeController::class,'redirect'])->middleware('auth','verified');

Route::get('/view_category', [AdminController::class,'view_category']);

Route::post('/add_category', [AdminController::class,'add_category']);

Route::get('/delete_category/{id}', [AdminController::class,'delete_category']);

Route::get('/view_product', [AdminController::class,'view_product']);

Route::post('/add_product', [AdminController::class,'add_product']);

Route::get('/show_product', [AdminController::class,'show_product']);

Route::get('/delete_product/{id}', [AdminController::class,'delete_product']);

Route::get('/update_product/{id}', [AdminController::class,'update_product']);

Route::post('/update_product_confirm/{id}', [AdminController::class,'update_product_confirm']);

Route::get('/order', [AdminController::class,'order']);

Route::get('/delivered/{id}', [AdminController::class,'delivered']);

Route::get('/print_pdf/{id}', [AdminController::class,'print_pdf']);

Route::get('/send_email/{id}', [AdminController::class,'send_email']);

Route::post('/send_user_email/{id}', [AdminController::class,'send_user_email']);

Route::get('/search', [AdminController::class,'searchdata']);



/* Shop routes */

/* Products */

Route::get('/shop', [ProductController::class,'product'])->name('shop');

Route::get('/product/details/{id}', [ProductController::class,'product_details'])->name('product-details');

Route::get('/product/search', [ProductController::class,'search_product'])->name('product-search');


/* Cart */
Route::post('/add_cart/{id}', [CartController::class,'add_cart']);

Route::get('/cart', [CartController::class,'show_cart'])->name('show-cart');

Route::get('/remove_cart/{id}', [CartController::class,'remove_cart']);

/* Order */

Route::get('/cash_order', [OrderController::class,'cash_order']);

Route::get('/orders', [OrderController::class,'show_order'])->name('show-orders');

Route::get('/Cancel_Order/{id}', [OrderController::class,'Cancel_Order']);

/* Payment */

Route::get('/stripe/{totalprice}', [PaymentController::class,'stripe']);

Route::post('stripe/{totalprice}', [PaymentController::class,'stripePost'])->name('stripe.post');

/* Comments */

Route::post('/add_comment', [CommentsController::class,'add_comment']);

Route::post('/add_reply', [CommentsController::class,'add_reply']);
