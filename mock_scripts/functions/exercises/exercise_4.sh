#!/bin/bash

subtract() {
	local num1=$1
	local num2=$2
	local sub=$(($num1 - $num2))
	echo "$num1 subtracted from $num2 is equal to $sub."
}

subtract 20 10

subtract 1500 300

subtract 123339930 291340
