#!/bin/bash

read -p "which site you want to check? " site

ping $site &> /dev/null      #&> /dev/null redirects the unwanted values to null or not shows on terminal
#sleep 5s

if [[ $? -eq 0 ]]
then 
	echo "Successfully connected to $site"
else
	echo "Unable to connect $site"
fi
