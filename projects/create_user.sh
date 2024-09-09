#!/bin/bash

# Script should be execute with sudo/root access
if [[ "${UID}" -ne 0 ]]
then
	echo 'Please run with sudo or root.'
	exit 1
fi

# User should provide atleast one argument as username else guide him
if [[ "${#}" -eq 0 ]]
then
	echo "Usage: ${0} USER_NAME [COMMENT]..."
	echo "Add a user with name USER_NAME and comments field of COMMENT"
	exit 1
fi

# Store 1st argument as user_name
USER_NAME=$1

# In case of more than one arguments, store it as account comments
shift
COMMENT="${@}"

# Create a password
PASSWORD=$(date +%s%N)    #or we can $RANDOM variable to generate pass

# Create the user
useradd -c "${COMMENT}" -m $USER_NAME

# Check if user is successfully created or not
if [[ $? -ne 0 ]]
then
	echo 'The Account could not be created'
	exit 1
fi

# Set the password for the user
echo $PASSWORD | passwd --stdin $USER_NAME

# Check if password is successfully set or not
if  [[ $? -ne 0 ]]
then 
	echo 'Password could not be set'
	exit 1
fi

# Force password change on first login
passwd -e $USER_NAME

# Display the username, password and the host where the user was created.
echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo "Hostname: $(hostname)"
