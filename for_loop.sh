#! /bin/bash

number=1
echo "while loop: while [ $number -le 5 ]"
while [ $number -le 5 ]
do
    echo $number
    number=$(( number+1 ))
done

number=1
echo "until loop: until [ $number -gt 5 ]"
until [ $number -gt 5 ]
do
    echo $number
    number=$(( number+1 ))
done

echo "for loop 1: for (( i=0; i<=5; i++ ))"
for (( i=0; i<=5; i++ ))
do
    echo $i
done

echo "for loop 2: for i in 1 2 3 4 5"
for i in 1 2 3 4 5
do
    echo $i
done

echo "for loop 3: for i in {1..10..2}"
for i in {1..10..2}
do
    echo $i
done

echo "for loop 1: for (( i=0; i<=10; i++ )) using continue when 3 and break when 7 statements"
for (( i=0; i<=10; i++ ))
do
    if [ $i -eq 3 ]
    then
        continue
    elif [ $i -eq 7 ]
    then
        break
    fi
    echo $i
done
