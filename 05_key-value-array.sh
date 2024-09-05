#!/bin/bash

#How to store key values pairs

declare -A myArray
myArray=( [name]=Akkya [age]=22 [city]=NYC)

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"