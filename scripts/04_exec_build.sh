#!/usr/bin/env bash


# Navigate to the project directory
cd "$APP_DIR" || { echo "Directory $APP_DIR does not exist."; exit 1; }

# Build the Docker image
sudo docker build -t "$IMAGE_NAME:$IMAGE_TAG" .

# Log in to Docker Hub (you will be prompted to enter your Docker Hub credentials)
docker login -u orinahum1982 -p turhbjuo1982!

# Push the Docker image to Docker Hub
docker push "$IMAGE_NAME:$IMAGE_TAG"

# Confirm successful push
if [ $? -eq 0 ]; then
  echo "Docker image successfully pushed to Docker Hub."
else
  echo "Failed to push Docker image to Docker Hub."
  exit 1
fi
