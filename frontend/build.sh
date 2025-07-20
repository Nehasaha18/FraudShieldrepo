#!/bin/bash

# Exit on any error
set -e

echo "🔧 Installing dependencies..."
npm install --legacy-peer-deps

echo "🔒 Fixing vulnerabilities..."
npm audit fix --force || true

echo "🏗️ Building application..."
CI=false npm run build

echo "✅ Build completed successfully!" 