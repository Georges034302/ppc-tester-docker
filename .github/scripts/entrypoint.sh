#!/bin/bash

# Run the frequency analysis
FREQ_RESULT=$(python3 /app/frequency.py "$1")

# Output the result
echo $FREQ_RESULT

# Update README
bash /app/update_readme.sh "$FREQ_RESULT" "$GITHUB_ACTOR"
