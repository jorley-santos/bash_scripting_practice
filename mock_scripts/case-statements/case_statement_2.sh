#!/bin/bash

switch=0

while [ $switch -ne 1 ]
do
	echo "Welcome to McDonalds! Please select your McMeal below."
	echo "1) Chicken Cheddar McMelt  - U$ 25.99"
	echo "2) Chicken Legend McCrispy - U$ 22.99"
	echo "3) Double Cheddar McMelt   - U$ 28.99"
	echo "4) 	Big Mac		   - U$ 25.99"
	echo "5) Double Burger Bacon	   - U$ 30.99"
	echo "6) Tasty Turbo Bacon	   - U$ 36.99"
	echo "7) Chicken Deluxe McCrispy - U$ 18.99"
	echo "8) Leave the McMeal Cart"

	read user_choice

	case $user_choice in
		1) echo "You added the Chicken Cheddar McMelt to your McMeal Cart!";;
		2) echo "You added the Chicken Legend McCrispy to your McMeal Cart!";;
		3) echo "You added the Double Cheddar McMelt to your McMeal Cart!";;
		4) echo "You added the Big Mac to your McMeal Cart!";;
		5) echo "You added the Double Burger Bacon to your McMeal Cart!";;
		6) echo "You added the Tasty Turbo Bacon to your McMeal Cart!";;
		7) echo "You added the Chicken Deluxe McCrispy to your McMeal Cart!";;
		8) echo "No McMeal added. Leaving McMeal Cart." & switch=1 ;;
		*) echo "You didn't type a valid McChoice, McFriend! McTry Again!"
	esac
done
