<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use Illuminate\Http\Request;

class Subscription extends Model
{
    use HasFactory;

    protected $fillable = [
        'status',
        'device_id',
    ];
}
