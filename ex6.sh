#!/bin/bash

#Exercise_6 - write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file. Also perform an ls command against the file or directory with the long listing option.

#Ask user for the name of the file or directory

echo "Please input the file you are looking for"
read userInput


if [ -e $userInput  ]
then
  #Print the type of file
  echo "The file is a $(file -ib $userInput)"

  #Print file properties
  echo $(ls -l $userInput)

else

echo "the file does not exist"

fi
