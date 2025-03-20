#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Variables
IMAGE_NAME="pradheep255/docker-test"
TAG="latest"

# Ensure the script has execution permissions
chmod +x "$0"

# Build Docker image
echo "Building Docker image: $IMAGE_NAME:$TAG..."
if docker build -t "$IMAGE_NAME:$TAG" .; then
    echo "✅ Docker image $IMAGE_NAME:$TAG built successfully."
else
    echo "❌ Docker image build failed!"
    exit 1
fi
