#! /bin/bash

echo 32+12

n1=32
n2=12

echo "Addition:" $(( n1 + n2 ))
echo "Subtraction:" $(( n1 - n2 ))
echo "Product:" $(( n1 * n2 ))
echo "Division:" $(( n1 / n2 ))
echo "Modulo:" $(( n1 % n2 ))

echo "Addition:" $(expr $n1 + $n2 )
echo "Subtraction:" $(expr $n1 - $n2 )
echo "Product:" $(expr $n1 \* $n2 )    # \ needed in order to recognize the * symbol
echo "Division:" $(expr $n1 / $n2 )
echo "Modulo:" $(expr $n1 % $n2 )

echo "Enter the Hex number of your choice"
read Hex

echo -n "The decimal value of $Hex is: "
echo "obase=10; ibase=16; $Hex" | bc

