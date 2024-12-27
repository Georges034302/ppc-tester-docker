#!/bin/bash

echo "======================"
echo "Starting Frequency Analyzer..."

# Run frequency.py with the input data
python3 /app/.github/scripts/frequency.py "$1"

# Update README (assuming this will be executed after frequency.py)
bash /app/.github/scripts/update_readme.sh

echo "Process Completed!"
echo "======================"
