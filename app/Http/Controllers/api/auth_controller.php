<?php

namespace App\Http\Controllers\api;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use App\Models\feedback_model;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
class auth_controller extends Controller
{
    public function login(Request $request){
        $validate = validator::make($request->all(), [
            'email' =>  "required|email",
            'password' => 'required',
        ]);
        if ($validate->fails()) {
            return response()->json([
                'status' => false,
                "message" => $validate->errors()->all(),
            ]);
        } else {
            $attrs = $request->validate([
                'email' => 'required',
                'password' => 'required',
            ]);
            if (!Auth::attempt($attrs)) {
                return response([
                    'status' => false,
                    'message' => [
                        'Invalid Credentials',
                    ],
                ]);
            } else {
                $user = User::where('email', $request['email'])->firstOrFail();
                return response([
                    'status'=>true,
                    'user' => $user,
                    'token' => $user->createToken('secret')->plainTextToken,
                ]);
            }
        }
    }

    public function register(Request $request){
        $validate=validator::make($request->all(),[
            'username'=>'required|string',
            'email' =>  "required|email|unique:users,email",
            'password'=>'required',
        ]);
        if($validate->fails()){
            return response()->json([
                'status'=>false,
                "message" => $validate->errors()->all(),
            ]);
        }else{
            $user=User::create([
                'username'=>$request->username,
                'email'=>$request->email,
                'password' => Hash::make($request->password),
            ]);
            if($user){
                return response()->json([
                    'status'=>true,
                    'message'=> 'Create user  sucessfully....',
                    'token' => $user->createToken('secret')->plainTextToken
                ]);
            }else{
                return response()->json([
                    'status'=>false,
                    'message'=> 'Create user not sucessfully....'
                ]);
            }
        }
    }

    public function logout(Request $request){
        $request->user()->currentAccessToken()->delete();
        return response()->json([
            'message' => 'Logout sucessfully.....',
        ]);
    }

    public function getusers(){
        $user=User::where('id',Auth()->user()->id)->get();
        return response()->json([
            'status'=> 'success',
            'user'=> $user,
        ]);
    }

    public function feedback(Request $request){
        if($request->hasFile('image')){
            $imageName = Str::random(40) . '.' . $request->image->getClientOriginalExtension();
            $request->image->move(public_path('Image/Feedback/Image'), $imageName);
            $feedback=feedback_model::create([
                'user_id'=>Auth()->user()->id,
                'image'=>$imageName,
                'description'=>$request->description,
            ]);
            if($feedback){
                return response()->json([
                    'status'=> 'success',
                    'message'=> 'Feedback sucessfully....'
                ]);
            }
        }
    }

    public function changes_profile(Request $request){
        $user=Auth()->user();
        if($request->hasFile('image')){
            $imagePath = public_path('Image/User/Image') . '/' . $user->image;
            $imageName = Str::random(40) . '.' . $request->image->getClientOriginalExtension();
            if($user->image){
                if(unlink(filename: $imagePath)){
                    $request->image->move(public_path('Image/User/Image'), $imageName);
                    User::where('id',Auth()->user()->id)->update([
                        'username'=> $request->username,
                        'phone'=> $request->phone,
                        'address'=> $request->address,
                        'image'=>$imageName,
                    ]);
                    return response()->json([
                        'status'=> 'success',
                        'message'=> 'Update image  sucessfully....'
                    ]);
                }
            }else{
                $request->image->move(public_path('Image/User/Image'), $imageName);
                User::where('id', Auth()->user()->id)->update([
                    'username'=> $request->username,
                    'phone'=> $request->phone,
                    'address'=> $request->address,
                    'image'=>$imageName,
                ]);
                return response()->json([
                    'status'=> 'success',
                    'message'=> 'Insert image  sucessfully....'
                ]);
            }
        }else{
            $user=User::where('id',Auth()->user()->id)->update([
                'username'=>$request->username,
                'phone'=>$request->phone,
                'address'=>$request->address,
            ]);
            return response()->json([
                'status'=> 'success',
                'message'=> 'Update user  sucessfully....'
            ]);
        }
    }
}
