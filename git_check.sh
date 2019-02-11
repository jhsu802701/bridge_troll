#!/bin/bash

# Run this script before entering "git add" and "git commit".

sh test_app.sh

sh outline-short.sh

echo '---------------------------------------'
echo 'bundle exec brakeman -Aq -w2 --no-pager'
bundle exec brakeman -Aq -w2 --no-pager

echo '----------'
echo 'git status'
git status
