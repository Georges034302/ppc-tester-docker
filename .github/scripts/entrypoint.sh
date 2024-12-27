#!/bin/bash

# Run the frequency.py script to calculate vowel frequency
FREQ_RESULT=$(python3 /usr/src/app/.github/scripts/frequency.py $1)

# Run the update_readme.sh script
bash /usr/src/app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"
