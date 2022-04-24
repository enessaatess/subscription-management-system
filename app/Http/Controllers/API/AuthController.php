<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Device;


class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'uid' => 'required|string|max:255',
            'appId' => 'required|integer',
            'language' => 'required|string|max:255',
            'operating-system' => 'required|string|max:255',
        ]);

        $count = Device::where('uid', $request->uid)->where('appId', $request->appId)->count();
        if($count>=1){
            return response()->json(['status' => 'OK'], 200);
        }

        if($validator->fails()){
            return response()->json($validator->errors());
        }

        $device = Device::create($request->toArray());

        $client_token = $device->createToken('auth_token')->plainTextToken;

        return response()
            ->json(['status' => "success", 'client_token' => $client_token],200);
    }
}
