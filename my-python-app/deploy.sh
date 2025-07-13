#!/bin/bash
set -x

echo "Starting deployment..."

# Kill any existing app
pkill -f "python app.py" || true

# Start the app in background, bind to 0.0.0.0
nohup python app.py > app.log 2>&1 &

# Wait a moment for app to start
sleep 5

# Check if app is running (use localhost for internal check)
if curl -s http://127.0.0.1:5000/health > /dev/null; then
    echo "✅ App deployed successfully!"
    echo "🌐 App is running at: http://192.168.64.4:5000"
else
    echo "❌ Deployment failed!"
    exit 1
fi