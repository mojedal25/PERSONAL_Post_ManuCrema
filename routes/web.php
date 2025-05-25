<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;

Route::get('/', function () {
    return view('welcome');
});


Route::middleware(['auth'])->group(function () {
    Route::get('/blog/list', [PostController::class, 'list'])->name('posts.list');

    Route::get('/blog/create', [PostController::class, 'create'])->name('posts.create');
    Route::post('/blog/store', [PostController::class, 'store'])->name('posts.store');

    Route::get('/blog/{id}/edit', [PostController::class, 'edit'])->name('posts.edit');
    Route::put('/blog/{id}/update', [PostController::class, 'update'])->name('posts.update');

    Route::delete('/blog/{id}', [PostController::class, 'destroy'])->name('posts.destroy');
});

Route::get('/', [PostController::class, 'index'])->name('home');

Route::get('/{id}/{slug}', [PostController::class, 'show'])->name('posts.show');

Route::get('/blogs', [PostController::class, 'blog'])->name('blog.index');
Route::get('/blogs/category/{slug}', [PostController::class, 'blog'])->name('posts.category');
Route::get('/blogs/tag/{slug}', [PostController::class, 'blog'])->name('posts.tag');

Route::get('/contact', function () {
    return view('contact.index');
})->name('contact.index');

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
