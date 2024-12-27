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

# Set up remote origin (using your repository URL)
git remote add origin https://github.com/Georges034302/custom_workflows.git  # Update this with your repo URL

# Fetch the latest changes to ensure we have the latest branches
git fetch origin

# Check out the correct branch (assume "master" or "main")
git checkout main || git checkout master

# Update README
echo -e "\n[$GITHUB_USER - $FREQ_RESULT - $TIMESTAMP]" >> README.md

# Add README.md to git, commit, and push the changes
git add README.md
git commit -m "Update README with vowel frequency results"
git push origin $(git rev-parse --abbrev-ref HEAD)  # Push to the current branch
