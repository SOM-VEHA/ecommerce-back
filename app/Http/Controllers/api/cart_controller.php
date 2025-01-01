<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class cart_controller extends Controller
{
    public function index()
    {
        $cart = Cart::with('product.image')->where('user_id', auth()->user()->id)->get();
        return response()->json(
            [
                'status' => true,
                'cart' => $cart,
            ]
        );
    }

    public function store(Request $request)
    {
        $product = Product::find($request->product_id);
        if (!$product) {
            return response()->json([
                'message' => 'not fount',
                'status' => true,
            ]);
        } else {
            $cart = Cart::where('product_id', $request->product_id)->first();
            if (!$cart) {
                Cart::create(
                    [
                        'user_id' => Auth::user()->id,
                        'product_id' => $request->product_id,
                        'qty' => $request->qty,
                        'totalprice' => $product->price * $request->qty,
                    ]
                );
                return response()->json(
                    [
                        'status' => true,
                        'message' => "Add Card Sucessfull",
                    ]
                );
            } else {
                Cart::where("id", $cart->id)->update(
                    [
                        'user_id' => Auth::user()->id,
                        'product_id' => $request->product_id,
                        'qty' => $request->qty + $cart->qty,
                        'totalprice' => $product->price * ($request->qty + $cart->qty),
                    ]
                );
                return response()->json(
                    [
                        'status' => true,
                        'message' => "Add Card Sucessfull",
                    ]
                );
            }
        }
    }

    public function remove(Request $request)
    {
        $cart = Cart::find($request->id);
        if ($cart->delete()) {
            return response()->json(
                [
                    'status' => true,
                    'message' => 'Remove from Carts successfully'
                ]
            );
        }
    }

    public function add_remove(Request $request)
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
            ]
        );
    }
}