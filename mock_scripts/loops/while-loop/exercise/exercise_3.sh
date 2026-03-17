#!/bin/bash

read -p "Enter a number: " num

count=1

echo "Multiplication table for $num: "

while [ $count -le 10 ]

do
	echo "$num * $count = " && expr $num \* $count
	count=$(( $count + 1 ))	
	sleep 0.5
done


