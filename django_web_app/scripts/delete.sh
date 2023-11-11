#!/bin/bash
# Stop the Docker container
container_id=$(docker ps -q --filter "ancestor=my-python-app")
if [ -n "$container_id" ]; then
    docker stop "$container_id"
    echo "Docker container with ID $container_id has been stopped."
else
    echo "No running Docker container found."
fi
# Remove the Docker container
container_id=$(docker ps -aq --filter "ancestor=my-python-app")
if [ -n "$container_id" ]; then
    docker rm "$container_id"
    echo "Docker container with ID $container_id has been removed."
else
    echo "No Docker container found for removal."
