#!/bin/bash

#Write a bash script that uses a for loop to print numbers from 0 to 10

num=0

while [ $num -le 10 ]
do
	echo $num
	num=$(( num + 1 ))
	sleep 0.5
done

