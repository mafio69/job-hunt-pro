#!/bin/bash

echo "🛑 Stopping Laravel Sail application..."

# Stop queue workers
echo "⚡ Stopping queue workers..."
pkill -f "artisan queue:work"

# Stop containers
echo "📦 Stopping containers..."
./vendor/bin/sail down

echo "✅ Application stopped successfully!"
