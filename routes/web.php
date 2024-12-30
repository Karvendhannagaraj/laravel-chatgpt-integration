<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ChatGPTController;
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
Route::get('/', function () {
    return view('chat');
});

Route::get('get_conversion', [ChatGPTController::class, 'getConversations']);
Route::post('send_request',[ChatGPTController::class, 'sendRequest']);
