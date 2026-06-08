<?php

namespace App\Providers;

use Illuminate\Support\Facades\URL;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        if (env("VERCEL") && $this->app->environment("production")) {
            $this->app->useStoragePath("/tmp/storage");
        }
    }

    public function boot(): void
    {
        if ($this->app->environment("production")) {
            URL::forceScheme("https");
        }

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
