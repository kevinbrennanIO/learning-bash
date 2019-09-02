#!/bin/bash

#----------------------------------------------------------------------
#Author       :  Keivn Brennan
#Date         :  ...
#Description  :  Brief description of what this job does goes here
#----------------------------------------------------------------------

# BEST PRACTICES

# Use long options (logger --priority vs logger -p)
# Variables should always be referred to in the ${var} form (as opposed to $var)
# Environment variables ${LIKE_THIS}, local variables ${like_this}
# Always use $(cmd) for command substitution rather that `backticks`
# Use 'printf' rather than echo, its behaviour is better defined
# Apply the Single Responsibility Principle: a function does one thing

#/ Usage: SCRIPTNAME [OPTIONS]... [ARGUMENTS]...

readonly script_name=$(basename "${0}")
readonly script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
IFS=$'\t\n'   # Split on newlines and tabs (but not on spaces)

set -o errexit   # (set -e) abort on nonzero exitstatus
set -o nounset   # (set -u) abort on unbound variable
set -o xtrace    # (set -x) trace what get executed
set -o pipefail  # don't hide errors within pipes
