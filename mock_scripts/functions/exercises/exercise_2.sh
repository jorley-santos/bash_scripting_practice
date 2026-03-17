#!/bin/bash

greet() {
	local name="$1"
	echo "Hello, $name! Welcome!"
}

greet "Maria" "Pedro"
