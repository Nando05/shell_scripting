#!/bin/bash	

#Modify the previous script ex6.sh  to that it accepts the file or directory name as an argument instead of prompting the user to enter it

#Ask user for the name of the file or directory

myList = $@
for item in myList
do
  echo $item
done

if [ -e $@  ]
then
  #Print the type of file
  echo "The file is a $(file -ib $@)"

  #Print file properties
  echo $(ls -l $@)

else

echo "the file does not exist"

fi

