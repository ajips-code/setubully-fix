<?php

namespace App\Services\Dashboard;

use Carbon\Carbon;

class GreetingService
{
    public function dashboardGreeting()
    {
        // Timezone
        $currentTime = Carbon::now();
        $hour = $currentTime->hour;

        if ($hour >= 5 && $hour <= 13) {
            $greeting = 'Selamat Pagi';
        } elseif ($hour >= 14 && $hour <= 17) {
            $greeting = 'Selamat Sore';
        } else {
            $greeting = 'Selamat Salam';
        }

        return $greeting;
    }
}
