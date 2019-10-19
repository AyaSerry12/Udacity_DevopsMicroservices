#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=ml_project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo $(aws ecr get-login --no-include-email --region us-west-2)
sudo docker tag $dockerpath:latest 570465604558.dkr.ecr.us-west-2.amazonaws.com/$dockerpath:latest



# Step 3:
# Push image to a docker repository
sudo docker push 570465604558.dkr.ecr.us-west-2.amazonaws.com/$dockerpath:latest