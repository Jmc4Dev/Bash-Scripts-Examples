#! /bin/bash

# array declaration
car=("BMW" "Toyota" "Honda")

echo "${car[@]}"   # prints all the values

echo "${car[1]}"   # prints the second element

echo "${!car[@]}"  # prints the indexes

echo "${#car[@]}"  # prints the number of elements

unset car[1]       # remove the second element
echo "${car[@]}"   # prints all the values

car[1]="Mercedes"  # add a new element
echo "${car[@]}"   # prints all the values

