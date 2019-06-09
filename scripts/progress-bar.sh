#!/bin/bash

# Because asked, here's how we can create a progress bar using echo!
# There is probably a better way, so feedback is encouraged!
# See while.sh for while loop info
# See functions.sh for functions
# See variable-parameters.sh for variables and parameters
getProgress()
{
    local i=0
    local max=$1
    local progress=""
    while [[ $i -lt $max ]]; do
        i=$(expr $i + 1)
        progress="${progress}="
    done
    echo -n $progress
}

clearPrevious()
{
    local i=0
    local max=$1
    local erase=""
    while [[ $i -lt $max ]]; do
        i=$(expr $i + 1)
        erase="\b${erase}"
    done
    echo -n -e $erase
}

showProgressBar()
{
    # Make the cursor invisible
    tput civis -- invisible

    # Run while loop until input amount, and echo out contents, sleeping 0.005s between
    local length=25
    local i=0
    local percent=0
    echo -ne "\n(0/$length) [                         ]"
    sleep 0.005
    clearPrevious $(expr $length + 9)
    while [[ $i -lt $length ]]; do
        echo -n "($(expr $i + 1)/$length) ["
        getProgress $i
        sleep 0.005
        clearPrevious $(expr $i + ${#i} + 21)
        i=$(expr $i + 1)
    done
    echo -e '\n\nDone\n'

    # Set the cusor back to normal
    tput cnorm -- normal
}

showProgressBar
