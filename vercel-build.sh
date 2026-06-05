#!/bin/bash
echo '=== Vercel Build Script ==='
# Create required storage directories
mkdir -p storage/framework/cache
mkdir -p storage/framework/sessions
mkdir -p storage/framework/views
mkdir -p storage/app/public
mkdir -p storage/logs
# Create storage symlink
php artisan storage:link
echo '=== Build Complete ==='
