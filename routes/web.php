<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\{UserController, FrontendController, PagesController, SettingsController, ContactController,
                ProductsController, GalleryController};

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

Route::get('/',                [FrontendController::class, 'index'])->name('front.index');
Route::get('pages/{slug}',     [FrontendController::class, 'about'])->name('front.about');
Route::get('page/{slug}',      [FrontendController::class, 'page'])->name('front.page.detail');
Route::get('contact-us',       [FrontendController::class, 'contact'])->name('front.contact');
Route::get('gallery',          [FrontendController::class, 'gallery'])->name('front.gallery');
Route::get('gallery/{slug}',   [FrontendController::class, 'galleryDetail'])->name('front.gallery.detail');
Route::get('products',         [FrontendController::class, 'products'])->name('front.products');
Route::get('products/{slug}',  [FrontendController::class, 'productsDetail'])->name('front.products.detail');
Route::post('contact-us/save', [FrontendController::class, 'saveNew'])->name('front.save');
Route::post('subscribe/save',  [FrontendController::class, 'subscribeSave'])->name('front.subscribe.save');


Route::prefix('admin')->group(function () {

Route::group(['middleware' => 'auth'], function () {
    Route::get('/',                [UserController::class, 'dash'])->name('dashboard');
    Route::get('/users',           [UserController::class, 'index'])->name('user.index');
    Route::get('users/list',        [UserController::class, 'list'])->name('user.list');
    Route::get('users/edit/{id}',   [UserController::class, 'edit'])->name('user.edit');
    Route::put('users/update/{id}', [UserController::class, 'update'])->name('user.update');
    Route::get('users/create',      [UserController::class, 'create'])->name('user.create');
    Route::post('users/create',     [UserController::class, 'save'])->name('user.save');
    Route::get('users/delete/{id}', [UserController::class, 'delete'])->name('user.delete');


    Route::get('pages',             [PagesController::class, 'index'])->name('pages.index');
    Route::get('pages/list',        [PagesController::class, 'list'])->name('pages.list');
    Route::get('pages/create',      [PagesController::class, 'create'])->name('pages.create');
    Route::post('pages/save',       [PagesController::class, 'save'])->name('pages.save');
    Route::get('pages/edit/{id}',   [PagesController::class, 'edit'])->name('pages.edit');
    Route::put('pages/update/{id}', [PagesController::class, 'update'])->name('pages.update');
    Route::get('pages/delete/{id}', [PagesController::class, 'delete'])->name('pages.delete');


    Route::get('settings',             [SettingsController::class, 'index'])->name('settings.index');
    Route::get('settings/list',        [SettingsController::class, 'list'])->name('settings.list');
    Route::get('settings/create',      [SettingsController::class, 'create'])->name('settings.create');
    Route::post('settings/save',       [SettingsController::class, 'save'])->name('settings.save');
    Route::get('settings/edit/{id}',   [SettingsController::class, 'edit'])->name('settings.edit');
    Route::put('settings/update/{id}', [SettingsController::class, 'update'])->name('settings.update');
    Route::get('settings/delete/{id}', [SettingsController::class, 'delete'])->name('settings.delete');

    Route::get('contactus',              [ContactController::class, 'index'])->name('contactus.index');
    Route::get('contactus/list',         [ContactController::class, 'list'])->name('contactus.list');
    Route::get('contactus/reply/{id}',   [ContactController::class, 'reply'])->name('contactus.reply');
    Route::put('contactus/reply/{id}',   [ContactController::class, 'sendReply'])->name('contactus.reply');
    Route::get('contactus/delete/{id}',  [ContactController::class, 'delete'])->name('contactus.delete');

    Route::get('products',             [ProductsController::class, 'index'])->name('products.index');
    Route::get('products/list',        [ProductsController::class, 'list'])->name('products.list');
    Route::get('products/create',      [ProductsController::class, 'create'])->name('products.create');
    Route::post('products/create',     [ProductsController::class, 'save'])->name('products.save');
    Route::get('products/edit/{id}',   [ProductsController::class, 'edit'])->name('products.edit');
    Route::put('products/update/{id}', [ProductsController::class, 'update'])->name('products.update');
    Route::get('products/delete/{id}', [ProductsController::class, 'delete'])->name('products.delete');


    Route::get('gallery',             [GalleryController::class, 'index'])->name('gallery.index');
    Route::get('gallery/list',        [GalleryController::class, 'list'])->name('gallery.list');
    Route::get('gallery/create',      [GalleryController::class, 'create'])->name('gallery.create');
    Route::post('gallery/save',       [GalleryController::class, 'save'])->name('gallery.save');
    Route::get('gallery/edit/{id}',   [GalleryController::class, 'edit'])->name('gallery.edit');
    Route::put('gallery/update/{id}', [GalleryController::class, 'update'])->name('gallery.update');
    Route::get('gallery/delete/{id}', [GalleryController::class, 'delete'])->name('gallery.delete');

});

    require __DIR__ . '/auth.php';

});
