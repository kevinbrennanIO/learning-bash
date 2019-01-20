#!/bin/bash

let var=5

if [ "$var" -gt 10 ] || [ "$var" -eq 20 ]
then 
	echo "You got a match"
else 
	echo "No match this time"
fi

