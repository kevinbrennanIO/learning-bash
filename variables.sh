#!/bin/bash

greeting="Welcome"
user=$(whoami)
day=$(date +%A)

echo "$greeting back $user! Today is $day, which is the best day of the entire week!!"
echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"

a=4
b=5

echo Values: $a + $b = $[$a + $b]


# This part of the script is used to backup a user's home directory to /tmp/.

user=$(whoami)
input=/Users/$user/Desktop
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

tar -czf $output $input 2> /dev/null
echo "Backup of $input completed! Details about the output backup file:"
ls -l $output
