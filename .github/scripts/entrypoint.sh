#!/bin/bash

echo "======================"
echo "Starting Frequency Analyzer..."

# Inputs from environment variables
GITHUB_USER=${GITHUB_USER:-"Unknown"}
TIMESTAMP=$(date)

# Running the Python frequency analyzer
FREQ_RESULT=$(python3 ./scripts/frequency.py data.txt)

# Running update_readme.sh
bash ./scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Process Completed!"
