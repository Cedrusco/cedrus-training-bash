#!/bin/bash

# If condition is true, then echo a message confirming the logic
if [[ 1 -eq 1 ]]; then
    echo "1 does, in fact, equal 1"
fi

# If condition is false, then echo "Error"
if [[ 1 -eq 2 ]]; then
    echo "1 does equal 2"
else
    echo "No, 1 does not equal 2"
fi

# If condition is false, then if another condition, then echo "Error"
THE_ANSWER=42
if [[ 1 -eq 2 ]]; then
    echo "1 does equal 2"
elif [[ $THE_ANSWER -eq 42 ]]; then
    echo "42 is the answer!"
else
    echo "No, 1 does not equal 2"
fi

# You can also do comparisions, like greater than, less than, etc.
if [[ 1 -gt 2 ]]; then
    echo "1 is greater than 2"
else
    echo "No, it's not"
fi

# The same comparison using > instead of -gt
if [[ 1 > 2 ]]; then
    echo "1 is greater than 2"
else
    echo "No, it's not"
fi

# Equality for string variables is different
s="s"
if [[ $s == "s" ]]; then
    echo "s == s"
# This will cause an error
# elif [[ $s -eq "s" ]]; then
#     echo "s -eq s"
else
    echo "None equal?"
fi

# Check for the existence of a variable

# FOO does not exist
if [[ -z ${FOO} ]]; then
    echo "FOO doesn't exist"
else
    echo $FOO
fi

# BAR does exist
BAR='bar'
if [[ -z ${BAR} ]]; then
    echo "BAR doesn't exist"
else
    echo $BAR
fi

