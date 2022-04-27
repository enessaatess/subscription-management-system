<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

use App\Models\Device;
use App\Models\Subscription;

class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function register(Request $request)
    {
        $validated = $request->validate([
            'uid' => 'required|string|max:255',
            'appId' => 'required|integer',
            'language' => 'required|string|max:255',
            'operating_system' => 'required|string|max:255',
        ]);

        //Operation system => use "android-playstore" or "ios-appstore"
        //Language => example "tr"

        $device = Device::where('uid', $request->uid)->where('appId', $request->appId)->first();

        if(! $device){
            $device= Device::create($validated);
        }

        $token = $device->createToken($request->operating_system)->plainTextToken;

        return response()
        ->json(['status' => "OK", 'client_token' => $token],200);
    }



    /**
     * Purchase
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function purchase(Request $request)
    {
        $request->validate([
            'receipt' => 'required|string|max:255',
        ]);

        if($request->user()->operating_system=="ios-appstore"){
            $purchase = $this->iosPurchase($request->receipt);

        } else{
            $purchase = $this->androidPurchase($request->receipt);

        }

        if($purchase['status'] == "true"){
            $request->user()->update([
                'expire_date' => $purchase['expire_date']
            ]);
            $new = Subscription::create([
                'device_id' => $request->user()->id,
                'status' => 'started'
            ]);
        }
        else {
            $new = Subscription::create([
                'device_id' => $request->user()->id,
                'status' => 'failed'
            ]);
        }

        return response()
        ->json([
            'message'=> 'OK',
            'status' => $new['status']
        ], 200);

    }

    /**
     * Check Subsciption
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function checkSubsciption(Request $request)
    {
        $subscription = Subscription::where('device_id', $request->user()->id)->latest()->first();

        if($subscription){
            return response()
            ->json([
                'message'=> 'OK',
                'status' => $subscription['status']
            ], 200);
        }
        else {
            return response()
            ->json([
                'message'=> 'OK',
                'status' => 'false'
            ], 200);
        }
    }

    /**
     * IOS Purchase
     *
     * @param $receipt
     * @return \Illuminate\Http\JsonResponse
     */
    public function iosPurchase($receipt)
    {
        $response = Http::post('http://127.0.0.1:8001/api/ios_mock',
            [
                'receipt' => $receipt,
            ]
        );

        return $response->json();
    }

    /**
     * Android Purchase
     *
     * @param $receipt
     * @return \Illuminate\Http\JsonResponse
     */
    public function androidPurchase($receipt)
    {
        $response = Http::post('http://127.0.0.1:8001/api/ios_mock',
            [
                'receipt' => $receipt,
            ]
        );

        return $response->json();
    }
}
