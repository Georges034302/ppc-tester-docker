#!/bin/bash

# Inputs from environment variables
GITHUB_USER=${GITHUB_USER:-"Unknown"}
TIMESTAMP=$(date)

# Run frequency.py and capture the result
FREQ_RESULT=$(python3 ./scripts/frequency.py data.txt)

# Call update_readme.sh with the required arguments
bash ./scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"
