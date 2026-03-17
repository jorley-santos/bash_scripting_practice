#!/bin/bash

greet() {
	read -p "Hello! Please enter your name: " user_name
	echo "Thank You! Welcome to the Grand Line, $user_name!"

}

greet
