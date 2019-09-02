#!/bin/bash 

colors="green white orange"

for col in $colors
  do
    echo "$col" + 'w'
  done


# Notice how printing $colors or "$colors" are not the same output

for col in "$colors" # this take the variable as a full string with one loop pass
  do
    echo $col
  done


# Also not the same as using single quotes

for col in '$colors'
  do
    echo $col
  done
