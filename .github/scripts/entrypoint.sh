#!/bin/bash

echo "======================"
echo "Starting Frequency Analyzer..."

# Running the Python frequency analyzer
python3 /app/.github/scripts/frequency.py /app/data.txt

# Running update_readme.sh
bash /app/.github/scripts/update_readme.sh

echo "Process Completed!"
