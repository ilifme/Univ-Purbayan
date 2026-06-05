#!/bin/bash
echo "=== Vercel Build Script ==="

# Install Node dependencies
npm install

# Build CSS with Tailwind (compile resources/css/app.css → public/css/output.css)
npx tailwindcss -i ./resources/css/app.css -o ./public/css/output.css --minify

# Create required writable directories for Laravel
mkdir -p storage/framework/cache
mkdir -p storage/framework/sessions
mkdir -p storage/framework/views
mkdir -p storage/app/public
mkdir -p storage/logs

echo "=== Build complete ==="
