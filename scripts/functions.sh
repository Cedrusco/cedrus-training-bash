#!/bin/bash

# Create a function that returns the result of life, the Universe, and everything
# Note how it's referenced as an exit code
getAnswer()
{
    return 42
}

getAnswer
echo $?

# Create a function that echoes a value
getAnswerAgain()
{
    echo 42
}

getAnswerAgain

# Create a function that sets a variable to check
getAnswerOneMoreTime()
{
    answer=42
}

getAnswerOneMoreTime && echo $answer

# Return doesn't work the way you expect it to in other languages
getInvalidReturnType()
{
    echo "This won't work - numeric value (exit code) only"
    # return "Some arbitrary value"
}

getInvalidReturnType
echo $?

# Input parameters work the same way as a script execution with $1, $2, etc
outputParamters()
{
    echo $1
}

outputParamters 42