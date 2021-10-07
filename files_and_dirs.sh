#! /bin/bash

# mkdir -p Directory2

function appendText()
{
    echo "Enter the text you want to append: "
    read newText
    echo "$newText" >> $1   # >> to append into the file. To replace type only one >
}

echo "Enter directory name to check: "
read direct

# -d checks that a directory exists

if [[ -d "$direct" ]] 
then
    echo "$direct exists"
else
    echo "$direct does not exist"
fi

echo "Type the name of the file to create:"
read filename

# -f checks that a file exists
if [[ -f "$filename" ]]
then
    echo "$filename already exists"
else
    echo "$filename does not exist. Creating..."
    touch $filename
fi

appendText $filename

while IFS= read -r line
do
    echo "$line"
done < $filename     # the filename which we try to read

echo "Do you want to delete the file?"
read answer

if [[ "$answer" == "s" || "$answer" == "S" || "$answer" == "y" || "$answer" == "Y" ]]
then
    rm $filename
    echo "$filename deleted!!!"
else
    echo "Nothing done!!!"
fi

