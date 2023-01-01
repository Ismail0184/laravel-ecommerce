<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\UnitController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\CustomerAuthController;
use App\Http\Controllers\CustomerDashboardController;
use App\Http\Controllers\AdminOrderController;

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

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/category-product/{id}', [HomeController::class, 'categoryProduct'])->name('category-product');
Route::get('/sub-category-product/{id}', [HomeController::class, 'subCategoryProduct'])->name('sub-category-product');
Route::get('/product-detail/{id}', [HomeController::class, 'productDetail'])->name('product-detail');

Route::post('/cart/add/{id}', [CartController::class, 'add'])->name('cart.add');
Route::get('/cart/show', [CartController::class, 'show'])->name('cart.show');
Route::post('/cart/remove/{id}', [CartController::class, 'remove'])->name('cart.remove');
Route::post('/cart/update/{id}', [CartController::class, 'update'])->name('cart.update');

Route::get('/checkout', [CheckoutController::class, 'index'])->name('checkout');
Route::post('/confirm-order', [CheckoutController::class, 'confirmOrder'])->name('order.confirm');
Route::get('/complete-order', [CheckoutController::class, 'completeOrder'])->name('order.complete');

Route::get('/customer-login', [CustomerAuthController::class, 'login'])->name('customer.login');
Route::post('/customer-login', [CustomerAuthController::class, 'newLogin'])->name('customer.login');
Route::get('/customer-register', [CustomerAuthController::class, 'register'])->name('customer.register');
Route::post('/customer-register', [CustomerAuthController::class, 'create'])->name('customer.register');

Route::get('/customer-logout', [CustomerAuthController::class, 'logout'])->name('customer.logout');
Route::get('/customer-dashboard', [CustomerDashboardController::class, 'index'])->name('customer.dashboard')->middleware('customer');


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {

    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::get('/category/add', [CategoryController::class, 'index'])->name('category.add');
    Route::post('/category/create', [CategoryController::class, 'create'])->name('category.create');
    Route::get('/category/manage', [CategoryController::class, 'manage'])->name('category.manage');
    Route::get('/category/edit/{id}', [CategoryController::class, 'edit'])->name('category.edit');
    Route::post('/category/update/{id}', [CategoryController::class, 'update'])->name('category.update');
    Route::get('/category/delete/{id}', [CategoryController::class, 'delete'])->name('category.delete');

    Route::get('/sub-category/add', [SubCategoryController::class, 'index'])->name('sub-category.add');
    Route::post('/sub-category/create', [SubCategoryController::class, 'create'])->name('sub-category.create');
    Route::get('/sub-category/manage', [SubCategoryController::class, 'manage'])->name('sub-category.manage');
    Route::get('/sub-category/edit/{id}', [SubCategoryController::class, 'edit'])->name('sub-category.edit');
    Route::post('/sub-category/update/{id}', [SubCategoryController::class, 'update'])->name('sub-category.update');
    Route::get('/sub-category/delete/{id}', [SubCategoryController::class, 'delete'])->name('sub-category.delete');

    Route::get('/brand/add', [BrandController::class, 'index'])->name('brand.add');
    Route::post('/brand/create', [BrandController::class, 'create'])->name('brand.create');
    Route::get('/brand/manage', [BrandController::class, 'manage'])->name('brand.manage');
    Route::get('/brand/edit/{id}', [BrandController::class, 'edit'])->name('brand.edit');
    Route::post('/brand/update/{id}', [BrandController::class, 'update'])->name('brand.update');
    Route::get('/brand/delete/{id}', [BrandController::class, 'delete'])->name('brand.delete');

    Route::get('/unit/add', [UnitController::class, 'index'])->name('unit.add');
    Route::post('/unit/create', [UnitController::class, 'create'])->name('unit.create');
    Route::get('/unit/manage', [UnitController::class, 'manage'])->name('unit.manage');
    Route::get('/unit/edit/{id}', [UnitController::class, 'edit'])->name('unit.edit');
    Route::post('/unit/update/{id}', [UnitController::class, 'update'])->name('unit.update');
    Route::get('/unit/delete/{id}', [UnitController::class, 'delete'])->name('unit.delete');

    Route::get('/product/add', [ProductController::class, 'index'])->name('product.add');
    Route::get('/product/get-all-sub-category', [ProductController::class, 'getAllSubCategory'])->name('get-all-sub-category');
    Route::post('/product/create', [ProductController::class, 'create'])->name('product.create');
    Route::get('/product/manage', [ProductController::class, 'manage'])->name('product.manage');
    Route::get('/product/detail/{id}', [ProductController::class, 'detail'])->name('product.detail');
    Route::get('/product/edit/{id}', [ProductController::class, 'edit'])->name('product.edit');
    Route::post('/product/update/{id}', [ProductController::class, 'update'])->name('product.update');
    Route::get('/product/delete/{id}', [ProductController::class, 'delete'])->name('product.delete');

    Route::get('/admin/order-manage', [AdminOrderController::class, 'manage'])->name('admin.order-manage');
    Route::get('/admin/order-detail/{id}', [AdminOrderController::class, 'orderDetail'])->name('admin.order-detail');
    Route::get('/admin/order-invoice/{id}', [AdminOrderController::class, 'orderInvoice'])->name('admin.order-invoice');
    Route::get('/admin/download-invoice/{id}', [AdminOrderController::class, 'downloadInvoice'])->name('admin.download-invoice');
    Route::get('/admin/order-edit/{id}', [AdminOrderController::class, 'edit'])->name('admin.order-edit');
    Route::get('/admin/order-delete/{id}', [AdminOrderController::class, 'delete'])->name('admin.order-delete');

});
