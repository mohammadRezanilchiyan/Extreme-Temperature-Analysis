#!/bin/bash
# Add all changes
git add .
# Commit with your custom message
git commit -m "$1"
# Push to GitHub
git push origin main
