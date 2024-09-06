#!/bin/bash

#Getting values from a file names.txt

FILE="f:/myScripts/names.txt"

for name in $(cat $FILE)
do
	echo "Names are $name"
done

