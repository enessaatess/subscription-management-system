<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Device extends Model
{
    use HasApiTokens, HasFactory;

    protected $fillable = [
        'uid',
        'appId',
        'language',
        'operating_system',
        'expire_date'
    ];

    public function getSubscription(){
        return $this->belongsTo(Subscription::class,'device_id','id');
    }
}
