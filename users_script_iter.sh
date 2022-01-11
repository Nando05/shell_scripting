#!/bin/bash	

create_user() {
  if [ "$#" -lt 1  ]
    then
    echo "You have not entered an $0 <username>"
    exit 1
  elif getent passwd  "$1"
    then
    echo "The userame $1 already exists"
    exit 2
  fi

  sudo useradd -m "$1"
  getent passwd "$1"
}
create_password(){

  while ! [ -n "$USER_PASSWORD"  ]
  do
   read -s -p "please input the password for $1:  " USER_PASSWORD
  done
  echo "$USER_PASSWORD" | sudo passwd --stdin "$1" 
}

for u in "$@"
do
  create_user "$u"
  create_password "$u"
done
 
