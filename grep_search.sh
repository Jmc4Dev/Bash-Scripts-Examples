#! /bin/bash

echo "Enter a file name: "
read filename

if [[ -f $filename ]]
then
    echo "Enter the text to search: "
    read text_to_search

    # -i to ignore case
    # -n to show the line numbers
    # -c to show the number of ocurrences
    # -v to show the lines without the text searched
    echo "-i -n     -> ignore case and shows the lines containing the text and the line number"
    grep -i -n $text_to_search $filename
    echo "-i -c     -> ignore case and shows the number of lines containing the text"
    grep -i -c $text_to_search $filename
    echo "-i -n -v  -> ignore case and shows the lines without the text and the line number"
    grep -i -n -v $text_to_search $filename
    echo "-i -c -v  -> ignore case and shows the number of lines without the text searched"
    grep -i -c -v $text_to_search $filename

else
    echo "The file does not exist!!"
fi

