#!/bin/bash

# Navigate to the application directory
cd /home/ec2-user/fastapi-app

# Create a virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi

# Activate the virtual environment
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run the application (you might want to use a process manager like pm2 or supervisord)
uvicorn main:app --host 0.0.0.0 --port 8000

