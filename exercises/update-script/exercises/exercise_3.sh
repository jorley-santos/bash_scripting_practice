#!/bin/bash

num1=0

while [ $num1 -le 10 ]
do
	echo $num1
	num1=$(( $num1 +1 ))
done

echo "End"
