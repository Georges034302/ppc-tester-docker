#!/bin/bash

# Inputs
FREQ_RESULT=$1
GITHUB_USER=$2
TIMESTAMP=$(date)

# Install Git (required for git operations)
apt-get update && apt-get install -y git

# Initialize a git repository if not already initialized
if [ ! -d ".git" ]; then
  git init
fi

# Configure Git to use GitHub Actions user and email
git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"

# Update README
echo -e "\n[$GITHUB_USER - $FREQ_RESULT - $TIMESTAMP]" >> README.md

# Get the current branch
CURRENT_BRANCH=$(git symbolic-ref --short HEAD)

# Add README.md to git, commit, and push the changes
git add README.md
git commit -m "Update README with vowel frequency results"
git push origin "$CURRENT_BRANCH"
