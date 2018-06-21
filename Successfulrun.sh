#!/bin/sh
#This snippet will check to see if a previously ran command was successful.
if [ $? -ne 0 ]; then
	echo "The command was not successful.";
	#do the needful / exit
fi;