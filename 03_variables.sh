#!/bin/bash
#Script to show how to use variables

a=10
name='Akkya'
age=22

echo "My name is $name and age is $age."

name='Akhilesh' #We can change the values of variable

echo "My name is $name"

#Variable to store the output of a command
HOSTNAME=$(hostname)   #hostname is command in Linux which shows the name of machine
echo "Name of this machine is $HOSTNAME"

#Constant Variable (readonly is the keyword for constant)
readonly College="PVPIT"
echo "My College name is $College"

College="AITRC"     #shows error
echo $College

