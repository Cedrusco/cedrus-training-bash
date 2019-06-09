#!/bin/bash

# Limit results using regular expression by piping results of ls
ls | grep -e "^e"

# You can also search files
# Search ping.sh for google.com
grep 'google.com' ping.sh

# Search multiple files
# Search all script files for google.com
grep 'google.com' *.sh

