#!/bin/bash

echo "🔧 Starting development environment..."

# Start application
./start.sh

# Start Vite dev server
echo "🎨 Starting Vite dev server..."
./vendor/bin/sail npm run dev

