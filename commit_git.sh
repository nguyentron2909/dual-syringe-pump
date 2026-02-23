#!/bin/bash

# Title/Header
echo "========================================"
echo "  Git Add, Commit, Pull, and Push"
echo "========================================"
echo ""

# Show the files that have been changed [cite: 2]
echo "Changes to be committed:"
git status -s
echo ""

# Grab the current system date 
current_date=$(date +'%Y-%m-%d')

# Prompt the user for a commit message 
# -p allows the prompt text; read takes the input
read -p "Enter your commit message (or press Enter for 'update - $current_date'): " commit_msg

# If the user just presses Enter, use the default message 
if [ -z "$commit_msg" ]; then
    commit_msg="update - $current_date"
fi

# Execute the Git commands [cite: 4]
echo ""
echo "1. Adding files..."
git add .

echo ""
echo "2. Committing locally..."
git commit -m "$commit_msg"

echo ""
echo "3. Pulling remote changes (Rebasing)... [cite: 5]"
git pull --rebase

echo ""
echo "4. Pushing to GitHub..."
git push

echo ""
echo "========================================"
echo "  Process Complete! [cite: 6]"
echo "========================================"
