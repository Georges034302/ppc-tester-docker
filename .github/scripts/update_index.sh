#!/bin/bash

# Inputs
FREQ_RESULT=$1
GITHUB_USER=$2
TIMESTAMP=$(date)

# Update README
sed -i '/<\/body>/i <p>Updated by Team Leader: '"[$GITHUB_USER - $FREQ_RESULT - $TIMESTAMP]"'</p>' index.html

# Configure Git to use GitHub Actions user and email
git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"

# Add index.html to git, commit, and push the changes
git add index.html
git commit -m "Update index.html with vowel frequency results"
git push