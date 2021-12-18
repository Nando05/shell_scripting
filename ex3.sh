#!/bin/bash
#Exercise_3 - Store the output of the command “hostname” in a variable. Display “This script is running on _.” where “_” is the output of the “hostname” command.

myHost=$(ip -br -4 addr | head -n1)

echo "The script is running on $myHost"
