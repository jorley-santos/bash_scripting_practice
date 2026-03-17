#!/bin/bash

program=htop

if command -v $program
then
	echo "$program is available, let's run it.."
else
	echo "$program is NOT available, installing it.."
	sudo apt udpate && sudo apt install -y $program
fi

$program
