#!/bin/bash

#Array
myArray=(1 20 30.5 Hello "Hey Buddy!")

echo "All the values in array are ${myArray[*]}"
echo "Value in 3rd index is ${myArray[3]}"

#How to find the length of an Array
echo "No. of values, length of an array is ${#myArray[*]}"

#How to get specific values from array
echo "Values from index 2 are ${myArray[*]:2}"         #Here 2 after : is starting index / values will start from index 2
echo "Values from index 2-3 are ${myArray[*]:2:2}"     #Here 2 after starting index is no. values we want including the value of starting index

#Updating our array with new values
myArray+=(New 5 6)
echo "Values of new array are ${myArray[*]}"

