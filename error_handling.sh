#!/bin/bash

set -x

  # this section of code will be debugged, verbose

set +x

cd Desktop || exit

if [ $? = "0" ]; then
  echo "What ever your code is trying to do"
fi




# Create a runbook of error codes
  exit 254 # eg. file does not exist
  exit 34 # eg. not a directory
