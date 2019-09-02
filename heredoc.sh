#!/bin/bash

ssh user@123.123.123.123 << EOF

  ls
  pwd
  echo "Command will execute and session will close"

EOF


cat << DESCRIPTION
  The current working directory is: ${PWD}
  You are logged in as: $(whoami)
DESCRIPTION


cat << 'EOF' |  sed 's/l/e/g'
  Hello
  World
EOF