#!/bin/bash

echo "======================"
echo "Starting Frequency Analyzer..."

# Running the Python frequency analyzer
python3 /app/scripts/frequency.py /app/data.txt

# Running update_readme.sh
bash /app/scripts/update_readme.sh

echo "Process Completed!"
