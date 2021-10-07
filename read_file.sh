#! /bin/bash

# prints into the screen the content of the file passed as argument
# if no argument is passed, it prints what the user types into the console
while read line
do
    echo "$line"
done < "${1:-/dev/stdin}"

