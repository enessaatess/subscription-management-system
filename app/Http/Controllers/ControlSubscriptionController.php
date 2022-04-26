<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Http;

use App\Models\Device;
use App\Models\Subscription;

class ControlSubscriptionController extends Controller
{
    public function isSubscribed(Request $request)
    {
        $devices = Device::whereNotNull('expire_date')->get();
        foreach ($devices->chunk(5000) as $chunk) {
            foreach ($chunk as $device) {
                if (Carbon::now() > $device->expire_date) {
                    $receipt = rand(10000000, 99999999);
                    if($device->operating_system=="ios-appstore"){
                        $controle = $this->iosControle($receipt);
                    } else{
                        $controle = $this->androidControle($receipt);
                    }
                    if($controle['status'] == "renewed"){
                        Device::where('id', $device->id)->update([
                            'expire_date' => $controle['expire_date']
                        ]);
                        Subscription::create([
                            'device_id' => $device->id,
                            'status' => 'renewed'
                        ]);
                    }
                    else {
                        Device::where('id', $device->id)->update([
                            'expire_date' => NULL
                        ]);
                        Subscription::create([
                            'device_id' => $device->id,
                            'status' => 'canceled'
                        ]);
                    }

                }
            }

        }
    }

    public function iosControle($receipt)
    {
        $response = Http::post('http://127.0.0.1:8002/api/ios_control',
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
    public function androidControle($receipt)
    {
        $response = Http::post('http://127.0.0.1:8001/api/ios_control',
            [
                'receipt' => $receipt,
            ]
        );
        return $response->json();
    }
}
