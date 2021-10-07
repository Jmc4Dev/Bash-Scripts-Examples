#! /bin/bash

function funcPrint()
{
    echo "This is new function"
}

# BE CAREFULL!!!! 
# Inside the function the $1 argument refers to the arguments passed to the
# function when it's called.
# Outside the funtion the $1 argument refers to the arguments received by 
# the script
function funcPrintArg()
{
    echo "This prints the arguments" $1 $2    # argument received from the function call
}


function funcCheck()
{
    returningValue="Using the global variable inside the function"
    local returningValue2="Using the local variable inside the function"
    echo
    echo "2: $returningValue"
    echo "2: $returningValue2"
}


funcPrint                 # calling the function
funcPrintArg Hello $1     # one argument is a string and the other has been typed by the user

returningValue="Outside the function"
returningValue2="Outside the function 2"

echo
echo "1 global: $returningValue"
echo "1 global 2: $returningValue2"

funcCheck

echo
echo "3 global: $returningValue"  # now the value is the one given by the function!!!!
echo "3 global 2: $returningValue2"  # now the value is the one given by the function!!!!

