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

        // Fix storage symlink for Railway
        // Ensure public/storage points to storage/app/public so uploaded files are accessible
        $publicStorage = public_path("storage");
        $target = storage_path("app/public");

        if (file_exists($publicStorage)) {
            $isSymlink = is_link($publicStorage);
            if (!$isSymlink) {
                // It"s a real directory (from Git). Remove it and create symlink instead.
                // Temporarily rename old files
                $tmpDir = dirname($publicStorage) . "/storage-tmp";
                if (is_dir($tmpDir)) {
                    exec("rm -rf " . escapeshellarg($tmpDir));
                }
                if (rename($publicStorage, $tmpDir)) {
                    if (symlink($target, $publicStorage)) {
                        // Copy old files to new storage location
                        exec("cp -r " . escapeshellarg($tmpDir . "/*") . " " . escapeshellarg($target . "/") . " 2>/dev/null");
                        exec("rm -rf " . escapeshellarg($tmpDir));
                    }
                }
            }
        } elseif (is_dir($target)) {
            // Directory doesn"t exist, create symlink
            symlink($target, $publicStorage);
        }
    }
}
