#!/bin/bash

#Simple task of Calculator project

#creating functions

function add {
	read -p "Enter first number: " num1
	read -p "Enter second number: " num2
	let sum=$num1+$num2
	echo "Addition of $num1 + $num2 is $sum"
}

function sub {
	read -p "Enter first number: " num1
	read -p "Enter second number: " num2
	let result=$num1-$num2
	echo "Substraction of $num1-$num2 is $result"
}

function mul {
	read -p "Enter first number: " num1
	read -p "Enter second number: " num2
	echo "Multiplication of $num1*$num2 is $(($num1*$num2))"
}

function div {
	read -p "Enter first number: " num1
	read -p "Enter second number: " num2
	echo "Division of $num1/$num2 is $(( $num1/$num2 ))"
}

#creating case statement
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
