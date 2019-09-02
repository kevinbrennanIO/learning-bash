#!/bin/bash

#Takes some of the most basic command and puts them into a script that is executable

date
cal
pwd
ls

echo "$SHELL"
which "$SHELL"

file "${PWD}"

2> /dev/null # for stderr
 > /dev/null # for stdout
&> /dev/null # for stdout & stderr

cat < file1.txt # for passing stdin value

