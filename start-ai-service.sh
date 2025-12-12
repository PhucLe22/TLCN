#!/bin/bash

# Start AI Service Script
echo "Starting AI Services..."

# Check if virtual environment exists
if [ ! -d "ai-agent/chatbot_backend/.venv" ]; then
    echo "Creating virtual environment..."
    cd ai-agent/chatbot_backend
    python3 -m venv .venv
    source .venv/bin/activate
    pip install -r requirements.txt
    cd ../../..
else
    echo "Virtual environment exists"
fi

# Start the AI service
cd ai-agent/chatbot_backend
source .venv/bin/activate
echo "Starting FastAPI server on port 8000..."
python main.py
