#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=ml_project

# Step 2
# Run the Docker Hub container with kubernetes
sudo kubectl run appx --image=ayaserry/ml_project:latest --port=80

# Step 3:
# List kubernetes pods
sudo kubectl get pods

# Step 4:
# Forward the container port to a host
sudo kubectl expose deployment appx --type=LoadBalancer --port=8000 --target-port=80
sudo kubectl port-forward deployment/appx 8000:80