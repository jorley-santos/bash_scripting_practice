#!/bin/bash

#Testing for the existence of a file in the home directory

while [ -f ~/testfile ]
do
	echo "The test file exists."
	sleep 0.5
done

echo "The file no longer exists. Exiting."
