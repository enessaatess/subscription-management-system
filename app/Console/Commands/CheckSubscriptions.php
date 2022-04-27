<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon\Carbon;

use App\Models\Device;

use App\Jobs\CheckSubsciption;

class CheckSubscriptions extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'checkSubscriptions';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();

    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $devices = Device::whereDate('expire_date', '<', Carbon::now())->get();
        foreach ($devices->chunk(2000) as $chunk) {
            foreach ($chunk as $device) {
                CheckSubsciption::dispatch($device);
            }
        }
        return 0;
    }
}
