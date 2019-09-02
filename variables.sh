#!/bin/bash

$!    # Expands to the process ID of the most recently executed background (asynchronous) command
$?    # returns the last command exit code
$#    # expands the number of arguements (positional parameters)
"$@"  # expands to all the parameters used when calling the function

if [[ $# -ne 1 ]]; then
  echo 'One argument required for file name, e.g. "Backup-2017-07-25"'
  echo '.tar will automatically be added as a file extension'
  exit 1
fi


function foo(){
  echo "$@"
}
foo 1 2 3




greeting="Welcome"
user=$(whoami)
day=$(date +%A)

echo "$greeting back $user! Today is $day, which is the best day of the entire week!!"
echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"

a=4 b=5

echo Values: ${a} + ${b} = $(("${a}" + "${b}"))


# This part of the script is used to backup a user's home directory to /tmp/.

user=$(whoami)
input=/Users/${USER}/Desktop
output=/tmp/${USER}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

tar -czf "$output" "$input" 2> /dev/null
echo "Backup of ${input} completed! Details about the output backup file:"
ls -l "$output"
