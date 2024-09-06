#!/bin/bash

#it is a just opposite to while-loop, the loop will run until the condition gets true

a=10

until [[ $a -eq 1 ]]
do 
	echo "Value of a is $a"
	let a--
done
