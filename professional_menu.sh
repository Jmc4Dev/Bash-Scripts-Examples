#! /bin/bash

select car in BMW MERCEDES TESLA ROVER TOYOTA QUIT
do
    case $car in 
    BMW)
        echo "You have selected $car";;
    MERCEDES)
        echo "You have selected $car";;
    TESLA)
        echo "You have selected $car";;
    ROVER)
        echo "You have selected $car";;
    TOYOTA)
        echo "You have selected $car";;
    QUIT)
        echo "Press any key to continue"
        break;;
    *)
        echo "ERROR! Please select between 1 to 6!!";;
    esac
done

while [ true ]
do
    read -t 3 -n 1 
    if [ $? = 0 ]
    then
        echo "Thank You!! Goodbye!!!";
        exit;
    else
        echo "waiting for you to press the key!!"
    fi
done
