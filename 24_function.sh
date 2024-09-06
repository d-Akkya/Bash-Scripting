#!/bin/bash

#To make function
function welcomeNote {
	echo "--------"
	echo "Welcome"
	echo "--------"
}

#To call our function
welcomeNote
welcomeNote
welcomeNote
welcomeNote

#Another way to create a function
welcomeAgain() {
	echo "=============="
	echo "Welcome Again"
	echo "=============="
}
welcomeAgain
welcomeAgain
