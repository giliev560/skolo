#!/bin/bash

#Remove all empty files in the present working directory with the pattern
# <username><number>


userName=`whoami`

echo "User name is:" $userName


#Find the last or maximum number of a file that already exists

#List all the files in the present working directory | show only the files
#that have <username> in its name | show only the number portion of the file |
#sort the numbers in ascending order | show only the last number.

max=`ls | grep -E $userName | grep -oE [0-9]+ | sort -n | tail -n1`

echo "The maximum number is:" $max

#Remove all files with the pattern <userName><number>

for ((count=1 ; count<=$max ; count++))
do
 	rm $userName$count

done

#print all the files

ls

