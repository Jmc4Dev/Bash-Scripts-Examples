#! /bin/bash

echo "Enter first string"
read st1

echo "Enter second string"
read st2

#  "$st1" == "$st2"     st1 and st2 are equal
#  "$st1" \< "$st2"     st1 is smaller than st2
#  "$st1" \> "$st2"     st1 is greater than st2
#  c=$st1$st2           c contains the concatenation of both strings
#  ${st1^}              capitalize str1
#  ${st1^^}             converts str1 to uppercase

if [ "$st1" == "$st2" ]
then
    echo "Both strings match!"
else
    echo "Strings don't match"
fi

echo ${st1^}
echo ${st1^^}

