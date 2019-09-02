#!/bin/bash

user=$(whoami)
input=/Users/$user/Desktop
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz
echo
echo "Preparing Backup... "
sleep 1

prog() {
  local w=40 p=$1;  shift

  # create a string of spaces, then change them to dots
  printf -v dots "%*s" "$(( $p*$w/100 ))" ""; dots=${dots// /.};
  # print those dots on a fixed-width space plus the percentage etc.
  printf "\r\e[K|%-*s| %3d %% %s" "$w" "$dots" "$p" "$*";
}

# test loop
for x in {1..100} ; do
  prog "$x" backing up...
  sleep .02
done ;

echo
echo "Backup of $input completed! Details about the output backup file:"

function total_files {
  find ${1} -type f | wc -l
}

function total_directories {
  find ${1} -type d | wc -l
}
echo -n "Files to be included:"
total_files $input
echo -n "Directories to be included:"
total_directories $input
sleep 1

tar -czf $output $input 2> /dev/null
ls -l $output
sleep 1
echo
echo "** Backup complete **"
echo
