#!/bin/bash

# Find all files matching "python"
locate "python"

# Find all files matching "e*.sh" in the current directory "."
find . -name 'e*.sh'

# For all scripts in the current directory starting with e, output their values using cat
find . -type f -name 'e*.sh' -exec cat {} \;