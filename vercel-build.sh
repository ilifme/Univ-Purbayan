#!/bin/bash
echo "=== Vercel Build Script ==="

# Install Node dependencies
npm install

# Clear Tailwind JIT cache to force full re-scan
rm -rf node_modules/.cache/tailwindcss

# Clear previous CSS output
rm -f public/css/output.css

# Build CSS with Tailwind
npx tailwindcss -i ./resources/css/app.css -o ./public/css/output.css --minify

# Remove orphan AWS SDK from vendor (no longer in composer.lock)
rm -rf vendor/aws

# Clear any cached Laravel config/routes to prevent stale values
rm -f bootstrap/cache/config.php bootstrap/cache/routes-v7.php

# Create required writable directories for Laravel
mkdir -p storage/framework/cache
mkdir -p storage/framework/sessions
mkdir -p storage/framework/views
mkdir -p storage/app/public
mkdir -p storage/logs

echo "=== Build complete ==="
