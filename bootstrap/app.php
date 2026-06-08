<?php

use App\Http\Middleware\FooterMiddleware;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

if (PHP_VERSION_ID >= 80500) {
    error_reporting(error_reporting() & ~E_DEPRECATED);
}

$app = Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        $middleware->append(FooterMiddleware::class);
        $middleware->trustProxies(at: "*");
    })
    ->withExceptions(function (Exceptions $exceptions) {
        //
    })->create();

// Vercel / serverless environment: redirect writable paths to /tmp
if (! is_writable($app->storagePath())) {
    $tmpDir = sys_get_temp_dir()."/laravel";

    foreach (["logs", "framework", "framework/cache", "framework/sessions", "framework/views"] as $dir) {
        $fullPath = $tmpDir."/storage/".$dir;
        if (! is_dir($fullPath)) {
            @mkdir($fullPath, 0777, true);
        }
    }

    $app->useStoragePath($tmpDir."/storage");

    $tmpBootstrapCache = $tmpDir."/bootstrap/cache";
    if (! is_dir($tmpBootstrapCache)) {
        @mkdir($tmpBootstrapCache, 0777, true);
    }

    $originalCache = $app->basePath("bootstrap/cache");
    if (is_dir($originalCache)) {
        foreach (glob($originalCache."/*.php") as $file) {
            $dest = $tmpBootstrapCache."/".basename($file);
            if (! file_exists($dest)) {
                @copy($file, $dest);
            }
        }
    }

    $app->useBootstrapPath($tmpDir."/bootstrap");
}

return $app;
