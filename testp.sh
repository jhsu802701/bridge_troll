#!/bin/bash

# NOTE: The bundle install and database migration are skipped here.
# It is assumed that you already completed these steps, which are
# covered in the build_fast.sh script.

# This script tests the policies and presenters only.

echo '-------------------------------'
echo 'bundle exec rspec spec/policies'
bundle exec rspec spec/policies

echo '---------------------------------'
echo 'bundle exec rspec spec/presenters'
bundle exec rspec spec/presenters
