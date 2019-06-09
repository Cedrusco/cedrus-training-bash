#!/bin/bash

# Make a new folder
mkdir folder1

# Make a new nested folder
mkdir -p folder2/folder2A/folder2Aa

# Move a folder/file
mv folder1 folder3

# Copy a folder requires -r flag
cp -r folder3 folder4

# Change directory to folder
cd folder3

# Change back up one directory
cd ..

# Remove the folders (will fail if not empty)
rmdir folder3
rmdir folder4

# Remove the nested folder
rm -r folder2
