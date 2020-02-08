#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath

dockerpath=scientronic92/flaskapp

# Step 2:  
# Authenticate & tag

echo "Docker ID and Image: $dockerpath"
docker tag flaskapp:2.0 scientronic92/flaskapp:2

# Step 3:
# Push image to a docker repository

docker push flaskapp:2.0 scientronic92/flaskapp:2
