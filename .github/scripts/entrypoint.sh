#!/bin/bash

# Ensure the text file path is provided
if [ -z "$1" ]; then
  echo "Error: No file path provided."
  exit 1
fi

FILE_PATH=$1

# Run the Python frequency analyzer script
python3 /app/frequency.py "$FILE_PATH"

# Run the update README script
bash /app/update_readme.sh
