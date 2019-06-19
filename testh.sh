#!/bin/bash

# NOTE: The bundle install and database migration are skipped here.
# It is assumed that you already completed these steps, which are
# covered in the build_fast.sh script.

# This script tests the helpers and mailers only.

echo '-------------------------------------------'
echo 'bundle exec rspec spec/helpers spec/mailers'
bundle exec rspec spec/helpers spec/mailers