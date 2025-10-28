<?php

use App\Http\Controllers\FrontController;
use Illuminate\Support\Facades\Route;

Route::get('/', [FrontController::class, 'index'])->name('front.index');

Route::get('/details/{articleNews:slug}', [FrontController::class, 'details'])->name('front.details');

Route::get('/categories/{category:slug}', [FrontController::class, 'category'])->name('front.category');

Route::get('/authors/{author:slug}', [FrontController::class, 'author'])->name('front.author');

Route::get('/search', [FrontController::class, 'search'])->name('front.search');
