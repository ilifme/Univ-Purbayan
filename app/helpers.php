<?php

if (!function_exists("cloudinary_url")) {
    function cloudinary_url(?string $path): ?string
    {
        if (empty($path)) {
            return null;
        }
        // If already a full URL, return as-is
        if (str_starts_with($path, "http://") || str_starts_with($path, "https://")) {
            return $path;
        }
        // Construct Cloudinary URL directly (no API call, so old data won"t break)
        $cloudUrl = env("CLOUDINARY_URL");
        if ($cloudUrl) {
            // Parse cloud name from: cloudinary://key:secret@cloud_name
            preg_match("/@(.+)$/", $cloudUrl, $matches);
            $cloudName = $matches[1] ?? null;
            if ($cloudName) {
                // Clean: strip leading ./, /, or \
                $cleanPath = ltrim($path, "./\\/");
                // Remove file extension (Cloudinary public_id doesn"t include it)
                $publicId = preg_replace("/\.\w+$/", "", $cleanPath);
                return "https://res.cloudinary.com/{$cloudName}/image/upload/{$publicId}";
            }
        }
        // Fallback to local storage
        return asset("storage/" . $path);
    }
}
