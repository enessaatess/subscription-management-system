<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

use Carbon\Carbon;
use Illuminate\Support\Facades\Http;

use App\Models\Device;
use App\Models\Subscription;

class CheckSubsciption implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $device;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($device)
    {
        $this->device = $device;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $receipt = rand(10000000, 99999999); //buna döneceğiz
        if($this->device->operating_system=="ios-appstore"){
            $controle = $this->iosControle($receipt);
        } else{
            $controle = $this->androidControle($receipt);
        }
        if(!$controle) {
            CheckSubsciption::dispatch($this->device);
            return;
        }
        if($controle['status'] == "renewed"){
            Device::where('id', $this->device->id)->update([
                'expire_date' => $controle['expire_date']
            ]);
            Subscription::create([
                'device_id' => $this->device->id,
                'status' => 'renewed'
            ]);
        }
        else {
            Device::where('id', $this->device->id)->update([
                'expire_date' => NULL
            ]);
            Subscription::create([
                'device_id' => $this->device->id,
                'status' => 'canceled'
            ]);
        }
    }

    public function iosControle($receipt)
    {
        $response = Http::withBasicAuth(config('config.ios_username'), config('config.ios_password'))->post('http://127.0.0.1:8001/api/ios_control',
            [
                'receipt' => $receipt,
            ]
        );
        if($response->failed()){
            return false;
        }
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
        $response = Http::withBasicAuth(config('config.android_username'), config('config.android_password'))->post('http://127.0.0.1:8001/api/ios_control',
            [
                'receipt' => $receipt,
            ]
        );
        if($response->failed()){
            return false;
        }
        return $response->json();
    }
}
