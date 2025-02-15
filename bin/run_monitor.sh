#!/bin/bash
# Detecting shell and running the appropriate command

# Define the project directory
PROJECT_DIR="/home/jerlshin/FieldOfInterest/user_monitoring"

# Function to suppress output unless --verbose is passed
VERBOSE=0
if [[ "$1" == "--verbose" ]]; then
    VERBOSE=1
fi

# Function to run the Docker command
run_docker() {
    if [ $VERBOSE -eq 1 ]; then
        docker-compose up
    else
        docker-compose up -d > /dev/null 2>&1
    fi
}

# Run in Bash
if [ -n "$BASH_VERSION" ]; then
    cd $PROJECT_DIR && run_docker
# Run in Fish shell
elif [ -n "$FISH_VERSION" ]; then
    cd $PROJECT_DIR; run_docker
else
    # Default command if no shell is detected
    echo "Unsupported shell."
    exit 1
fi

# Open the web page in Microsoft Edge (only if the containers are up)
sleep 5  # Give it a few seconds to start the containers
microsoft-edge-stable http://localhost:8000
