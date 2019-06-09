#!/bin/bash

# Run second command if first is successful
echo 'Hello' && echo 'World'

# Run the second command and the first command in parallel
echo 'Hello' & echo 'World'

# Run the second command regardless of the result of the first
bash -c 'exit 1' || echo 'I ran anyway!'

# Pipe the results of an output to a file (will overwrite previous values)
echo "Hi" > hi.txt

# Append piped results to file
echo "Hola!" >> hi.txt

# Pipe result to another command
ls | grep -e "^e"