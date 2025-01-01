<?php
use App\Http\Controllers\api\auth_controller;
use App\Http\Controllers\api\categories_controller;
use App\Http\Controllers\api\favorite_controler;
use App\Http\Controllers\api\image_controller;
use App\Http\Controllers\api\product_controller;
use App\Http\Controllers\api\slider_controller;
use App\Http\Controllers\api\subcategory_controller;
use App\Http\Controllers\api\cart_controller;
use App\Http\Controllers\api\order_controller;
use App\Http\Controllers\api\Notificationcontroller;
use Illuminate\Support\Facades\Route;
Route::post('/login',[auth_controller::class,'login']);
Route::post('/register',[auth_controller::class,'register']);
Route::group(['middleware' => 'auth:sanctum'],function(){
    Route::post('/logout',[auth_controller::class,'logout']);
    Route::post('/usre/changes/password',[auth_controller::class,'changes_password']);
    Route::post('/user/changes',[auth_controller::class,'changes_profile']);
    Route::get('/user',[auth_controller::class,'getusers']);
    Route::get("/slider",[slider_controller::class,"index"]);
    Route::get("/categories",[categories_controller::class,"index"]);
    Route::get("/subcategories/{id}",[subcategory_controller::class,"index"]);
    Route::get("/products",[product_controller::class,"index"]);
    Route::get('/products/{id}',[product_controller::class,'getproduct']);
    Route::get("/products/detail/{id}",[product_controller::class,"detail"]);
    Route::get("/favorite/get",[favorite_controler::class,"index"]);
    Route::post("/favorite/store/",[favorite_controler::class,"store"]);
    Route::get("/cart",[cart_controller::class,"index"]);
    Route::post("/cart/store",[cart_controller::class,"store"]);
    Route::post("/cart/remove/",[cart_controller::class,"remove"]);
    Route::post("/cart/update",[cart_controller::class,"add_remove"]);
    Route::get("/image/get/{id}",[image_controller::class,"index"]);


    Route::get("/order",[order_controller::class,"index"]);
    Route::get("/order/status/{status}",[order_controller::class,"status"]);
    Route::get("/order/store/single/{product_id}/{qty}",[order_controller::class,"store_single"]);
    Route::post("/order/store/more/{totalPrice}",[order_controller::class,"store_more"]);
    Route::get("/order/cancel/{id}",[order_controller::class,"cancel"]);
    Route::get('/notification',[Notificationcontroller::class,'index']);
    Route::post('/feedback',[auth_controller::class,'feedback']);
});
