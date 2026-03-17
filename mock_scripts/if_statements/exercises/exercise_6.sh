#!/bin/bash

#Write a bash script that prompts the user to input a password, and then
#checks if the password matches a predefined value. If it does, print 
#"Acess granted", otherwise print "Access denied"

pass_saved="fred2011"

read -p "Enter your password: " pass_new

if [ $pass_new = $pass_saved ]
then
	echo "Access granted"
else
	echo "Access denied"

fi


