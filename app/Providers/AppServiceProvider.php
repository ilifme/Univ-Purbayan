<?php

namespace App\Providers;

use Illuminate\Support\Facades\URL;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        // Vercel: gunakan /tmp untuk writable storage
        if ($this->app->environment("production")) {
            $this->app->useStoragePath("/tmp/storage");
        }
    }

    public function boot(): void
    {
        // Vercel/HTTPS: force HTTPS scheme for all generated URLs
        if ($this->app->environment("production")) {
            URL::forceScheme("https");
        }

        if ($this->app->environment("production")) {
            // Buat direktori yang diperlukan di /tmp/storage
            $dirs = [
                storage_path("framework/cache"),
                storage_path("framework/sessions"),
                storage_path("framework/views"),
                storage_path("logs"),
                storage_path("app/public"),
            ];
            foreach ($dirs as $dir) {
                if (!is_dir($dir)) {
                    mkdir($dir, 0755, true);
                }
            }
        }
    }
}
