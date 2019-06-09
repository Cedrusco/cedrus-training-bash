#!/bin/bash

# Output result of one command as the input to another
# This will execute ls -ld
echo "-ld" | xargs ls