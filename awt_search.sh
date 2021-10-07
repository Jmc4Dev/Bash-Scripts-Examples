#! /bin/bash

echo "Enter filename to print from awk"
read filename

if [[ -f $filename ]]
then
    echo "this prints intop the terminal the content of the filename"
    awk '{print}' $filename 
    echo "this prints the lines that contains the word Linux"
    awk '/Linux/ {print}' $filename 
    echo "this prints the second and fourth field of the lines"
    awk '{print $2,$4}' $filename
    echo "using \$0 is the same that print all the line"
    awk '{print $0}' $filename
else
    echo "Sorry, this file does not exist!!!"
fi

