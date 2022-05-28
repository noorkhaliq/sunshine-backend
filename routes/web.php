<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/',                    [\App\Http\Controllers\FrontendController::class, 'index'])->name('front.index');
Route::get('pages/{slug}',         [\App\Http\Controllers\FrontendController::class, 'about'])->name('front.about');
Route::get('page/{slug}',          [\App\Http\Controllers\FrontendController::class, 'page'])->name('front.page.detail');
Route::get('contact-us',           [\App\Http\Controllers\FrontendController::class, 'contact'])->name('front.contact');
Route::get('gallery',              [\App\Http\Controllers\FrontendController::class, 'gallery'])->name('front.gallery');
Route::get('gallery/{slug}',       [\App\Http\Controllers\FrontendController::class, 'galleryDetail'])->name('front.gallery.detail');
Route::get('products',             [\App\Http\Controllers\FrontendController::class, 'products'])->name('front.products');
Route::get('products/{slug}',      [\App\Http\Controllers\FrontendController::class, 'productsDetail'])->name('front.products.detail');
Route::post('contact-us/save',     [\App\Http\Controllers\FrontendController::class, 'saveNew'])->name('front.save');


Route::prefix('admin')->group(function () {

Route::group(['middleware' => 'auth'], function () {
Route::get('/',                [App\Http\Controllers\UserController::class, 'dash'])->name('dashboard');
Route::get('/user/index',      [App\Http\Controllers\UserController::class, 'index'])->name('user.index');
Route::get('user/list',        [App\Http\Controllers\UserController::class, 'list'])->name('user.list');
Route::get('user/edit/{id}',   [App\Http\Controllers\UserController::class, 'edit'])->name('user.edit');
Route::put('user/update/{id}', [App\Http\Controllers\UserController::class, 'update'])->name('user.update');
Route::get('user/create',      [App\Http\Controllers\UserController::class, 'create'])->name('user.create');
Route::post('user/create',     [App\Http\Controllers\UserController::class, 'save'])->name('user.save');
Route::get('user/delete/{id}', [App\Http\Controllers\UserController::class, 'delete'])->name('user.delete');


Route::get('pages/index',       [App\Http\Controllers\PagesController::class, 'index'])->name('pages.index');
Route::get('pages/list',        [App\Http\Controllers\PagesController::class, 'list'])->name('pages.list');
Route::get('pages/create',      [App\Http\Controllers\PagesController::class, 'create'])->name('pages.create');
Route::post('pages/save',       [App\Http\Controllers\PagesController::class, 'save'])->name('pages.save');
Route::get('pages/edit/{id}',   [App\Http\Controllers\PagesController::class, 'edit'])->name('pages.edit');
Route::put('pages/update/{id}', [App\Http\Controllers\PagesController::class, 'update'])->name('pages.update');
Route::get('pages/delete/{id}', [App\Http\Controllers\PagesController::class, 'delete'])->name('pages.delete');


Route::get('settings/index',       [App\Http\Controllers\SettingsController::class, 'index'])->name('settings.index');
Route::get('settings/list',        [App\Http\Controllers\SettingsController::class, 'list'])->name('settings.list');
Route::get('settings/create',      [App\Http\Controllers\SettingsController::class, 'create'])->name('settings.create');
Route::post('settings/save',       [App\Http\Controllers\SettingsController::class, 'save'])->name('settings.save');
Route::get('settings/edit/{id}',   [App\Http\Controllers\SettingsController::class, 'edit'])->name('settings.edit');
Route::put('settings/update/{id}', [App\Http\Controllers\SettingsController::class, 'update'])->name('settings.update');
Route::get('settings/delete/{id}', [App\Http\Controllers\SettingsController::class, 'delete'])->name('settings.delete');

Route::get('contact/index',       [App\Http\Controllers\ContactController::class, 'index'])->name('contact.index');
Route::get('contact/list',        [App\Http\Controllers\ContactController::class, 'list'])->name('contact.list');
Route::get('contact/create',      [App\Http\Controllers\ContactController::class, 'create'])->name('contact.create');
Route::post('contact/save',       [App\Http\Controllers\ContactController::class, 'save'])->name('contact.save');
Route::get('contact/edit/{id}',   [App\Http\Controllers\ContactController::class, 'edit'])->name('contact.edit');
Route::put('contact/update/{id}', [App\Http\Controllers\ContactController::class, 'update'])->name('contact.update');
Route::get('contact/delete/{id}', [App\Http\Controllers\ContactController::class, 'delete'])->name('contact.delete');

    Route::get('products/index',       [App\Http\Controllers\ProductsController::class, 'index'])->name('products.index');
    Route::get('products/list',        [App\Http\Controllers\ProductsController::class, 'list'])->name('products.list');
    Route::get('products/create',      [App\Http\Controllers\ProductsController::class, 'create'])->name('products.create');
    Route::post('products/create',     [App\Http\Controllers\ProductsController::class, 'save'])->name('products.save');
    Route::get('products/edit/{id}',   [App\Http\Controllers\ProductsController::class, 'edit'])->name('products.edit');
    Route::put('products/update/{id}', [App\Http\Controllers\ProductsController::class, 'update'])->name('products.update');
    Route::get('products/delete/{id}', [App\Http\Controllers\ProductsController::class, 'delete'])->name('products.delete');


    Route::get('gallery/index',       [App\Http\Controllers\GalleryController::class, 'index'])->name('gallery.index');
    Route::get('gallery/list',        [App\Http\Controllers\GalleryController::class, 'list'])->name('gallery.list');
    Route::get('gallery/create',      [App\Http\Controllers\GalleryController::class, 'create'])->name('gallery.create');
    Route::post('gallery/save',       [App\Http\Controllers\GalleryController::class, 'save'])->name('gallery.save');
    Route::get('gallery/edit/{id}',   [App\Http\Controllers\GalleryController::class, 'edit'])->name('gallery.edit');
    Route::put('gallery/update/{id}', [App\Http\Controllers\GalleryController::class, 'update'])->name('gallery.update');
    Route::get('gallery/delete/{id}', [App\Http\Controllers\GalleryController::class, 'delete'])->name('gallery.delete');

});
require __DIR__ . '/auth.php';
});
