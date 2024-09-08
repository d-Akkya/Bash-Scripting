#!/bin/bash

<<comment
How to access arguments inside our script?

To get no. of arguments     : $#
To display all arguments    : $@
To use or display a argument: $1 $2 ..
comment

#to access the argument

if [[ $# -eq 0 ]]
then 
	echo "Not provided any argument"
	exit 1        #this keyword stops the script at a point
fi

echo "First argument is $1"
echo "Second argument is $2"

echo "All the arguments are - $@"
echo  "Number of arguments are - $#"

#for-loop to access the values from arguments

for filename in $@
do
	echo "Copying file - $filename"
done
