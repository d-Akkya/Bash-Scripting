#!/bin/bash

#AND Operator

read -p "What is your age? " age
read -p "Your country: " country

if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then
	echo "You can vote"
else
	echo "You can't vote"
fi

#OR Operator
read -p "How old you are? " year
read -p "Enter your city: " place

if [[ $year -ge 18 || $place == "Miraj" ]]
then
	echo "You can vote"
else
	echo "You can't vote"
fi
