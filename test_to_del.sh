#!/bin/bash	

list_users() {

userToDel=$(grep 'U[0-9]' /etc/passwd |  cut -b 1,2); echo "${userToDel}"
for u in $userToDel
do
  sudo userdel "$u"
  echo "user $u has been deleted"      
done

}

list_users
