#!/bin/bash

#Write a command to check if a numbeer is equal to 5 and print a message if TRUE
read -p "Enter a number: " num

echo "You typed in $num."

if [ $num -eq 5 ]
then
	echo "The number you typed in is equal to 5. True."
elif [ $num -lt 5 ]
then
	echo "The number you typed in is lesser than 5. False."
elif [ $num -gt 5 ] 
then
	echo "The number you typed in is greater than 5. False."
else
	echo "You did not type a number. False."	

fi
