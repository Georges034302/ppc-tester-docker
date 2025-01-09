#!/bin/bash

echo "Starting Frequency Analyzer..."

# Running the Python frequency analyzer
FREQ_RESULT=$(python3 /app/.github/scripts/frequency.py /app/data.txt)

# Running update_readme.sh
 bash .github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

# Running update_index.sh
if [ "$GITHUB_USER" == "Georges034302" ]; then
    bash .github/scripts/update_index.sh "$FREQ_RESULT" "$GITHUB_USER"
fi

echo "Process Completed!"


