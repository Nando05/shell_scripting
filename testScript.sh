#!/bin/bash

#Read the arguments and save them on a variable

myList=("$@")

for myList
do
 echo  -e "the file is $(file -ib $myList) and $(ls -l $myList)"
done
