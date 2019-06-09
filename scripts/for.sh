#!/bin/bash

# Iterate over a string - must be space-separated
string="A B C D E F G"
for item in $string; do
    echo $item
done

# Iterate over an array
array=( "foo" "bar" "baz" )
for item in ${array[@]}; do
    echo $item
done

# Iterate over a file list
files="*.sh"
for file in $files; do
    echo $file
done