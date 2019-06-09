#!/bin/bash

# Count to 10
i=0
max=10
while [[ $i -lt $max ]]; do
    i=$(expr $i + 1)
    echo $i
done

# True and false conditions work just like if/else
counter='F'
while [[ $counter != 'FOO' ]]; do
    # Eventually make FOO
    counter="${counter}O"
done
echo $counter