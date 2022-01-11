#!/bin/bash	



if getent passwd "$1"
then
 sudo userdel "$1"
 echo "$1 has been deleted"
else
 echo "User does not exist"
 exit 1

fi
echo "user deleted!"
