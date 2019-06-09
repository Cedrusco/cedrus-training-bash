#!/bin/bash

# Export a variable
export FOO='foo'

# View the variable
echo $FOO

# Remove the variable
unset FOO

# Variable is gone
echo $FOO