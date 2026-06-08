<?php

namespace App\Providers;

use Cloudinary\Cloudinary;
use CloudinaryLabs\CloudinaryLaravel\CloudinaryStorageAdapter;
use Illuminate\Filesystem\FilesystemAdapter;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\ServiceProvider;
use League\Flysystem\Filesystem;
use League\Flysystem\Config;
use League\MimeTypeDetection\FinfoMimeTypeDetector;

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

        // Override cloudinary disk with fixed adapter
        Storage::extend("cloudinary", function ($app, $config) {
            if (isset($config["url"])) {
                $cloudinary = new Cloudinary($config["url"]);
            } else {
                $cloudinary = new Cloudinary([
                    "cloud" => [
                        "cloud_name" => $config["cloud"],
                        "api_key" => $config["key"],
                        "api_secret" => $config["secret"],
                    ],
                    "url" => [
                        "secure" => $config["secure"] ?? false,
                    ],
                ]);
            }

            $adapter = new FixedCloudinaryAdapter($cloudinary, null, $config["prefix"] ?? null);
            return new FilesystemAdapter(new Filesystem($adapter, $config), $adapter, $config);
        });
    }
}
