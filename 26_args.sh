#!/bin/bash

<<comment
How to access arguments inside our script?

To get no. of arguments     : $#
To display all arguments    : $@
To use or display a argument: $1 $2 ..
comment

#to access the argument

echo "First argument is $1"
echo "Second argument is $2"

echo "All the arguments are - $@"
echo  "Number of arguments are - $#"
