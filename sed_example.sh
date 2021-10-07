#! /bin/bash

echo "Enter the filename to substitute using sed:"
read filename

if [[ -f $filename ]]
then

    echo "cat filename | sed 's/i/I/g'"
    echo "    -> search all the 'i' letters and change them by 'I' and prints into the terminal"
    echo "    without changing the file. The last g is to change all the occurrences!!!"
    cat $filename | sed 's/i/I/g'
    echo "sed 's/i/I/g' filename > newFile.txt"
    echo "    -> search all the 'i' letters and change them by 'I' modifying the file."
    echo "    into newFile.txt  The last g is to change all the occurrences!!!"
    sed 's/i/I/g' $filename > newfile.txt
    echo "sed -i 's/i/I/g' filename"
    echo "    -> search all the 'i' letters and change them by 'I' modifying the file itself."
    echo "    The last g is to change all the occurrences!!!"
    sed -i 's/i/I/g' $filename

else
    echo "Sorry, this file doesn\'t exist!!"
fi
