#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=scientronic92/flaskapp:4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment flaskapp --image=scientronic92/flaskapp:4

# Step 3:
# List kubernetes pods

kubectl get pods

# Step 4:
# Forward the container port to a host
sleep 600
kubectl port-forward deployment/flaskapp 8082:80
