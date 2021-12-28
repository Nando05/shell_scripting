#!/bin/bash	

if [ "$#" -lt 1  ]
then
 echo "You have not entered an $0 <username>"

 exit 1

elif getent passwd  "$1"

then

 echo "The userame $1 already exists"

 exit 2

fi

read -s -p "please input the password for $1:  " USER_PASSWORD

sudo useradd -m "$1"
echo "$USER_PASSWORD" | sudo passwd --stdin "$1" 

getent passwd "$1" 
