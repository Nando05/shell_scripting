#!/bin/bash

#Exercise_6 - write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file. Also perform an ls command against the file or directory with the long listing option.

#Ask user for the name of the file or directory

read userInput

#Print the type of file
echo $(file -b $userInput); echo $(ls -l $userInput) 


