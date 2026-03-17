#!/bin/bash

password="gomugomu"

read -p "Enter your password to receive the current date: " user_input

if [ $user_input == $password ]
then
	echo "Correct password!"
	echo "Date: $(date)"
else
	echo "Incorrect password!"

fi
