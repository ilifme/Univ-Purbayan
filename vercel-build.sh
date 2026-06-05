#!/bin/bash
echo "=== Vercel Build Script ==="
# Create required writable directories for Laravel
mkdir -p storage/framework/cache
mkdir -p storage/framework/sessions
mkdir -p storage/framework/views
mkdir -p storage/app/public
mkdir -p storage/logs
echo "=== Storage directories ready ==="
