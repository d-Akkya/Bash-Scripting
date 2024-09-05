#!/bin/bash

myVar="Hey Buddy, How are you?"
myVarLength=${#myVar}
echo "Length of myVar is $myVarLength"

echo "Uppercase will ----- ${myVar^^}"
echo "Lowercase will ----- ${myVar,,}"

#To replace a string
newVar=${myVar/Buddy/Akkya}
echo "New string is --- $newVar"

#To slice a string
echo "After slice ${newVar:4:5}"