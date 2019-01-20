#!/bin/bash

name=tea
var=10

# Counts the number of characters in a variable 
echo "The word $name contains ${#name} letters."

# Represents the decimal value of a binary number
echo $(( 2#111 ))

if [ "$var" -gt 0 ]; 
then echo "YES"; 
else echo "NO"
fi

