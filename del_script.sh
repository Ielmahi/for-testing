#!/bin/bash

# Define file prefix
FILE_PREFIX="file"

# Delete only file1 to file10
for i in {1..10}; do
    rm -f "${FILE_PREFIX}${i}"
done

# Stage only the deleted files
git rm file{1..10}

# Commit the changes
git commit -m "Deleted 10 files"

# Push to GitHub
git push origin main  # Change 'main' if needed

