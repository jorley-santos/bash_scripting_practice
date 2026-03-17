#!/bin/bash

multiply() {
	local num1=$1
	local num2=$2
	local mult=$(($num1 * $num2))
	
	echo "$num1 * $num2 is equal to $mult."
}


multiply 5 8
multiply 4 4
multiply 3 27
