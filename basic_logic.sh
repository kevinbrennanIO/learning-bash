#!/bin/bash

let var=20

# logical or

if [ "$var" -gt 10 ] || [ "$var" -eq 20 ]
then 
	echo "You got a match"
else 
	echo "No match this time"
fi

# logical and

if [ "$var" -gt 10 ] && [ "$var" -eq 20 ]
then
        echo "You got a match"
else
        echo "No match this time"
fi

