<?php

namespace App\Providers;

use Cloudinary\Cloudinary;
use CloudinaryLabs\CloudinaryLaravel\CloudinaryStorageAdapter;

class FixedCloudinaryAdapter extends CloudinaryStorageAdapter
{
    private function getPrivateProperty(string $name): mixed
    {
        $reflection = new \ReflectionProperty(CloudinaryStorageAdapter::class, $name);
        $reflection->setAccessible(true);
        return $reflection->getValue($this);
    }

    public function prepareResource(string $path): array
    {
        $info = pathinfo($path);

        // Ensure dirname uses forward slashes, regardless of OS
        $dirname = str_replace("\\", "/", $info["dirname"]);
        // Always use forward slash for path construction
        $id = $dirname . "/" . $info["filename"];

        // Strip any leading './' or '/' from the id to avoid invalid public IDs.
        $id = ltrim($id, "./\\/");

        // If a prefix is configured, apply it to the id.
        $prefix = $this->getPrivateProperty("prefix");
        if ($prefix !== "") {
            $id = $prefix . ($id !== "" ? "/" . $id : "");
        }

        $mimeTypeDetector = $this->getPrivateProperty("mimeTypeDetector");
        $mimeType = $mimeTypeDetector->detectMimeTypeFromPath($path);

        if (strpos($mimeType, "image/") === 0) {
            return [$id, "image"];
        }

        if (strpos($mimeType, "video/") === 0) {
            return [$id, "video"];
        }

        return [$id, "raw"];
    }
}
