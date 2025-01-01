<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\CartsModel;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartsController extends Controller
{
    public function index(Request $request)
    {
        $product = Product::find($request->id);
        $cart = Cart::where('product_id', $request->id)->update(
            [
                'qty' => $request->qty,
                'totalprice' => $product->price*$request->qty,
            ]
        );
        return response()->json(
            [
                'status' => true,
                'cart' => $cart,
            ]
        );
    }
}
