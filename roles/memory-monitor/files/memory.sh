#!/bin/bash

free=$( free -m | awk 'FNR == 2 {print $3}') 

if [ $free -ge 100 ]; then

	echo "Major problem memory is $free which is above the limit of 200"

else 
	echo "All good, memory is below 200"

fi



