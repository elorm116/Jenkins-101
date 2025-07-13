#!/bin/bash
echo "Starting deployment..."

# Kill any existing app
pkill -f "python app.py" || true

# Start the app in background
nohup python app.py > app.log 2>&1 &

# Wait a moment for app to start
sleep 5

# Check if app is running
if curl -s http://localhost:5000/health > /dev/null; then
    echo "✅ App deployed successfully!"
    echo "🌐 App is running at: http://localhost:5000"
else
    echo "❌ Deployment failed!"
    exit 1
fi