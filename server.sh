#!/bin/bash

sh pg-start.sh

if [ -f '/home/winner/shared/ports.txt' ]; then
  cat /home/winner/shared/ports.txt;
fi

echo '----------------------------------'
echo 'View page at http://localhost:3000'
echo 'If you are using a non-zero port offset,'
echo 'the port number will be different from 3000.'

echo '-------------------------------'
echo 'rails server -b 0.0.0.0 -p 3000'
rails server -b 0.0.0.0 -p 3000
