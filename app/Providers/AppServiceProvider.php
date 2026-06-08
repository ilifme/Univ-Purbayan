<?php

namespace App\Providers;

use Illuminate\Support\Facades\URL;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        // Vercel-specific: redirect writable paths to /tmp
        if (env("VERCEL") && $this->app->environment("production")) {
            $this->app->useStoragePath("/tmp/storage");
        }
    }

    public function boot(): void
    {
        // Force HTTPS for all generated URLs
        if ($this->app->environment("production")) {
            URL::forceScheme("https");
        }

        // Create required directories
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

        // Create storage symlink if it doesn't exist (for Railway & local dev)
        $publicStorage = public_path("storage");
        $target = storage_path("app/public");
        if (!file_exists($publicStorage) && is_dir($target)) {
            if (DIRECTORY_SEPARATOR === "\\") {
                // Windows: use junction
                exec("mklink /J " . escapeshellarg($publicStorage) . " " . escapeshellarg($target));
            } else {
                // Linux/Mac: use symlink
                symlink($target, $publicStorage);
            }
        }
    }
}
