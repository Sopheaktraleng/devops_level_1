#!/bin/bash

# Prompt for commit message
read -p "Enter commit message: " msg

# Get current Git branch
branch=$(git rev-parse --abbrev-ref HEAD)

# Add, commit, and push
git add .
git commit -m "$msg"
git push origin "$branch"
