<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;

class PlatformController extends Controller
{

    public function ios_mock(Request $request)
    {
        $request->validate([
            'receipt' => 'required|string|max:255',
        ]);

        if($request->receipt % 2 == 0){
            return response()
            ->json(['status' => "false"],200);
        }

        $expire_date = Carbon::now()->addHours(rand(0,5))->format('Y-m-d H:i:s');

        return response()
        ->json([
            'message'=> 'OK',
            'status' => "true",
            'expire_date' => $expire_date
        ], 200);

    }

    public function android_mock(Request $request)
    {
        $request->validate([
            'receipt' => 'required|string|max:255',
        ]);

        if($request->receipt % 2 == 0){
            return response()
            ->json(['status' => "false"],200);
        }

        $expire_date = Carbon::now()->addHours(rand(0,5))->format('Y-m-d H:i:s');

        return response()
        ->json([
            'message'=> 'OK',
            'status' => "true",
            'expire_date' => $expire_date
        ], 200);

    }

}
