#!/bin/bash

clear

trap 'echo "Please press Q to exit"' SIGINT SIGTERM SIGTSTP

while [ "$CHOICE" != "Q" ] && [ "$CHOICE" != "q" ]; do

  echo "Main Menu"
  echo "==========="
  echo "1) Choice One"
  echo "2) Choice Two"
  echo "3) Choice Three"
  echo ""
  read -r CHOICE
  clear
done