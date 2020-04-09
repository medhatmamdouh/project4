#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
#mkdir udacity
#cd udacity
dockerpath=jjones/udacity
docker login


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
#docker tag imagebuildinginprocess jjjones/predict
#docker tag imagebuildinginprocess:predict jjjones/predict
#docker tag predict jjjones/predict
#docker commit -m="This a test udacity image" predict jjjones/udacity
#docker tag predict jjjones/udacity
docker tag predict $dockerpath


# Step 3:
# Push image to a docker repository
#docker push jjjones/predict:tagname
#docker push udacity:predict
#docker push jjones/udacity
docker push $dockerpath
