#!/bin/bash

#The while loop

counter=1
while [ $counter -le 10 ];
do
	echo $counter
	((counter++))
	if [ $counter == $1 ];
	then
		break
	fi
done 
echo "loop exited"
echo "counter equals $counter"

