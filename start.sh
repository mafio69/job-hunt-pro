#!/bin/bash

echo "🚀 Starting Laravel Sail application..."

# Stop any running containers
echo "📦 Stopping existing containers..."
./vendor/bin/sail down

# Start containers in background
echo "🔄 Starting containers..."
./vendor/bin/sail up -d

# Wait for MySQL to be ready
echo "⏳ Waiting for MySQL to be ready..."
sleep 10

# Run migrations
echo "🗄️ Running database migrations..."
./vendor/bin/sail artisan migrate --force

# Clear caches
echo "🧹 Clearing caches..."
./vendor/bin/sail artisan config:clear
./vendor/bin/sail artisan cache:clear
./vendor/bin/sail artisan route:clear

# Start queue worker in background
echo "⚡ Starting queue worker..."
./vendor/bin/sail artisan queue:work --daemon &

echo "✅ Application started successfully!"
echo "🌐 Visit: http://localhost"
echo "📊 Queue worker running in background"
echo ""
echo "To stop: ./vendor/bin/sail down"
