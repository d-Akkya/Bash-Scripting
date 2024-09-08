#!/bin/bash

FILEPATH="/f/myScripts/abc.txt"

if [[ -f $FILEPATH ]]
then
	echo "File exist"
else 
	echo "Creating file now"
	touch $FILEPATH
fi
