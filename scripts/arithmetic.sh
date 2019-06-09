#!/bin/bash

# The expr command is used to evaluate an expression
# The $() is a subshell, and the result is saved to the result variable
result=$(expr 1 + 1)

# Output the result
echo $result

# Do arithmetic on variables
foo=40
bar=2
baz=$(expr $foo + $bar)

# Output the result
echo $baz