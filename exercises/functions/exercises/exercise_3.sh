#!/bin/bash

add() {

	local num1=$1
	local num2=$2
	local sum=$((num1 +num2))
	echo "The sum of $num1 and $num2 is: $sum"
}

add 10 20
add 100 200
