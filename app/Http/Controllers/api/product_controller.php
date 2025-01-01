<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class product_controller extends Controller
{
    public function index(Request $request){
        $userId = Auth()->id();
        $product = Product::with('image')->with('colors')
            ->with(['favorite' => function ($query) use ($userId) {
                $query->where('user_id', $userId);
            }])->where('status',1)->get()
            ->map(function ($product) use ($userId) {
                $product->is_favorite = $product->favorite->isNotEmpty() ? 1 : 0;
                unset($product->favorite);
                return $product;
            });
        return response()->json([
            'status' => true,
            'products' => $product,
        ]);
    }

    public function getproduct($id){
        $userId = Auth()->id();
        $product = Product::with('image')->with('colors')
            ->with(['favorite' => function ($query) use ($userId) {
                $query->where('user_id', $userId);
            }])->where('subcategories_id',$id)->get()
            ->map(function ($product) use ($userId) {
                $product->is_favorite = $product->favorite->isNotEmpty() ? 1 : 0;
                unset($product->favorite);
                return $product;
            });
        return response()->json([
            'status' => true,
            'products' => $product,
        ]);




        // $product = Product::with('image')->where('subcategories_id',$id)->get();
        // return response()->json([
        //     'status'=>true,
        //     'products'=> $product
        // ]);
    }

    public function detail($id){
        $userId = Auth()->id();
        $product = Product::with('image')
            ->with(['favorite' => function ($query) use ($userId) {
                $query->where('user_id', $userId);
            }]) ->where('id', $id)->get()
            ->map(function ($product) use ($userId) {
                $product->is_favorite = $product->favorite->isNotEmpty() ? 1 : 0;
                unset($product->favorite);
                return $product;
            });

        return response()->json([
            'status' => true,
            'products' => $product,
        ]);
    }
}
