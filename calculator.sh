#!/bin/bash

#Simple task of Calculator project

#create functions

function add {
	read -p "Enter the first number: " num1
	read -p "Enter the second number: " num2
	let sum=$num1+$num2
	echo "Addition of $num1 + $num2 is $sum"
}

function sub {
	read -p "Enter first number: " num1
	read -p "Enter second number: " num2
	echo "Substraction of $num1-$num2 is $(($num-$num2))"
}

function mul {
	read -p "Enter the first number: " num1
	read -p "Enter the second number: " num2
	echo "Multiplication of $num1*$num2 is $(($num1*$num2))"
}

function div {
	echo "Enter the first number: $num1"
	echo "Enter the second number: $num2"
	let div=$num1/$num2
	echo "Division of $num1/$num2 is $div "
}

#create case

echo "Select the operation you want perform of Calculator"
echo "a: Addition"
echo "b: Substraction"
echo "c: Multiplication"
echo "d: Division"

read choice

case $choice in 
	a)add;;
	b)sub;;
	c)mul;;
	d)div;;
	*) echo "Choose a valid option"
esac
