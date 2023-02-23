#!/bin/bash

#Create 25 empty files in the present working directory with the pattern
# <username><number>
#If such files already exist, add 25 extra, using numbers greater than the 
# maximum number used to numerate previous files

userName=`whoami`

echo "User name is:" $userName


#Find the last or maximum number of a file that already exists

#List all the files in the present working directory | show only the files
#that have <username> in its name | show only the number portion of the file |
#sort the numbers in ascending order | show only the last number.

max=`ls | grep -E $userName | grep -oE [0-9]+ | sort -n | tail -n1`

if [[ "$max" -eq "0" ]]; then
	echo "No files with the pattern <username><number>"
else
	echo "The maximum number is:" $max
fi

#create 25 new files with the pattern <userName><number>

for ((count=$((max+1)) ; count<=$((max+25)) ; ((count++))))
do
 	touch $userName$count

done

#print all the files

ls

