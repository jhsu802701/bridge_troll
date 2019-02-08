#!/bin/bash

if [ -f '/home/winner/shared/ports.txt' ]; then
  cat /home/winner/shared/ports.txt;
fi

echo '----------------------------------'
echo 'View page at http://localhost:8888'
echo 'If you are using a non-zero port offset,'
echo 'the port number will be different from 8888.'

echo '------------------------'
echo 'bundle exec rake jasmine'
bundle exec rake jasmine
