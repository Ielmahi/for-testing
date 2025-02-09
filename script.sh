#!/bin/bash

# Define file prefix
FILE_PREFIX="file"

# Create 10 files named file1, file2, ..., file10
for i in {1..10}; do
    touch "${FILE_PREFIX}${i}"
    echo "This is ${FILE_PREFIX}${i}" > "${FILE_PREFIX}${i}"
done

# Add files to Git
git add .

# Commit the changes
git commit -m "Added 10 new files"

# Push to GitHub
git push origin main  # Change 'main' to 'master' or your branch name if needed
