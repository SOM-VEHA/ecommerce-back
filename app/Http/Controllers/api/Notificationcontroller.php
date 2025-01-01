<?php

namespace App\Http\Controllers\api;
use App\models\Notificationmodel;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class Notificationcontroller extends Controller
{
    public function index(){
        $notification=Notificationmodel::with('product.image')->get();
        return response()->json(
            [
                "status"=>true,
                "notification"=> $notification,
            ]
        );
    }
}
