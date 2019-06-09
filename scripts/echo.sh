#!/bin/bash

# Output a value
echo "Hello World!"

# Output multiple values
echo "Hello" "World!"

# Output with newline
echo -e "Hello\nWorld!"

# Output with backspaces overriding a value
echo -e "Hello World\b\b\b\b\bMars!"

# Output value without outputting newline
echo -n "Hello"
echo -n " "
echo "World!"