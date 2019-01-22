#!/bin/bash

echo '--------------'
echo 'bundle install'
bundle install

echo '---------------------------'
echo 'bundle exec rake db:migrate'
bundle exec rake db:migrate

echo '------------------------------------------'
echo 'bundle exec rake bower:install:development'
bundle exec rake bower:install:development

echo '----------------'
echo 'bundle exec rake'
bundle exec rake

echo '---------------------------'
echo 'bundle exec rake jasmine:ci'
bundle exec rake jasmine:ci
