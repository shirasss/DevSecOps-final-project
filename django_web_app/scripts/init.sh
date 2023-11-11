#!/bin/bash
# Build the Docker image
docker build -t my-python-app .
# Run the Docker container, mapping port 8000
docker run -d -p 8000:8000 my-python-app
# Display container ID for reference
container_id=$(docker ps -q --filter "ancestor=my-python-app")
echo "Docker container is running with ID: $container_id"

