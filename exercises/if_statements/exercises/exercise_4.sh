#!/bin/bash
#Shebang line: Indicates the path to the shell intepreter

#Exercise: Write a bash script that prompts the user to enter their age,
#and then checks if the age is greater than or equal to 18. If it is,
#print "You are and adult", othewise print "You are a minor"

read -p "Enter your age: " age

if [ $age -ge 18 ]
then
	echo "You are an adult" 
else
	echo "You are a minor"

fi
