#!/bin/bash

num=10

while [ $num -ge 1 ]

do
	echo $num
	num=$(( num - 1 ))
	sleep 0.5

done


