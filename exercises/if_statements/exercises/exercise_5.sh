#!/bin/bash

#Write a bash script that checks if a given string is empty and print a message
#accordingly

str=""

if [ -z $str ]
then
	echo "The string is empty"

else
	echo "The string is not empty"

fi
