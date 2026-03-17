#!/bin/bash

for i in logfiles/*.log
do
	echo "Deleting file $i"
	rm -r $i
done

echo "Successful Execution"
