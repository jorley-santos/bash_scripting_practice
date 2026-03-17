#!/bin/bash

age1=26
age2=2

echo "Age 1 is $age1"
echo "Age 2 is $age2"
echo

echo "Age 1 + Age 2:"
expr $age1 + $age2
echo

echo "Age 1 - Age 2:"
expr $age1 - $age2
echo

echo "Age 1 * Age 2:"
expr $age1 \* $age2
echo

echo "Age 1 / Age 2:"
expr $age1 / $age2
