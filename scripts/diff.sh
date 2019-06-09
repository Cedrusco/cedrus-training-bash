#!/bin/bash

# Create some test files
echo -e "A\nB\nC\nD\nE" > file1.txt
echo -e "A\nC\nB\nD\nQ" > file2.txt

# Show difference between two files
# < and > show differences between two files
diff file1.txt file2.txt

# You can show differences side by side.
# Differences will have a | in the middle
diff --side-by-side file1.txt file2.txt

# There are different output formats such as the Unified and RCS formats
# The -u (Unified Format) shows the +/- file differences in context
# This looks a lot like a Git commit, which is why it's my personal favorite
diff -u file1.txt file2.txt
