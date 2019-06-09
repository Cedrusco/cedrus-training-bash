#!/bin/bash

# Change piped results with regular expression
# Hello becomes Yello
echo "Hello" | sed -r 's/H/Y/g'

# You can also edit a file inline
# Create file
echo "Hello" > file.txt
# Change Hello to Yello
sed -i 's/H/Y/g' file.txt
cat file.txt
# Clean up afterward
rm file.txt