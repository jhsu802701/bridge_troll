#!/bin/bash

echo PORT=3000 > .env

echo '*******************************'
echo 'GitHub App OmniAuth credentials'
echo '*******************************'
echo '--------------------------------------------------'
echo 'Follow these steps to get your GitHub credentials:'
echo '1. Log into your GitHub account.'
echo '2. Go to https://github.com/settings/profile .'
echo '3. Click on "Developer settings".'
echo '4. If you already created an OAuth app, click on it and'
echo '   get your Client ID and Client Secret.'
echo '   Make sure that the port numbers in your home page URL'
echo '   and authorization callback URL are correct for your'
echo '   Docker container.'
echo '   Then skip ahead to enter your credentials.'
echo '5. If you did not already create an OAuth app, click on'
echo '   "New OAuth App".'
echo '6. Use "bridge_troll" as your application name.'
echo '7. Use "http://localhost:3000/" as the Homepage URL.'
echo '   NOTE: If you are using a non-zero offset for the port numbers,'
echo '   the port number will be different from 3000.'
echo '8. Use "http://localhost:3000/users/auth/github/callback" as'
echo '   the Authorization callback URL.'
echo '   NOTE: If you are using a non-zero offset for the port numbers,'
echo '   the port number will be different from 3000.'
echo '9. Click on "Register application".  If all goes well, your'
echo '   Client ID and Client Secret are now provided.'
echo
echo '+++++++++++++++++++++++++++++++'
echo 'Enter the GitHub App Client ID:'
read GITHUB_ID

echo 'Enter the GitHub App Client Secret:'
read GITHUB_SECRET

echo GITHUB_OAUTH_KEY=$GITHUB_ID >> .env
echo GITHUB_OAUTH_SECRET=$GITHUB_SECRET >> .env

echo '*********************************'
echo 'Facebook App OmniAuth credentials'
echo '*********************************'
echo '----------------------------------------------------'
echo 'Follow these steps to get your Facebook credentials:'
echo '1. Log into your Facebook account.'
echo '2. Go to https://developers.facebook.com/ .'
echo '3. Click on "My Apps".'
echo '4. If you already created an OAuth app, click on it.'
echo '   Get your Facebook App ID and App Secret.'
echo '   Make sure that the port number in your app domain URL'
echo '   is correct for your Docker container.'
echo '   Then skip ahead to enter your credentials.'
echo '5. If you did not already create an OAuth app, click on'
echo '   My Apps -> Add New App'.
echo '6. Use "bridge_troll" as the display name.  Click on'
echo '   "Create App ID"'
echo '7. Click on Settings -> Basic.'
echo '8. Use "http://localhost:3000/" as the app domain.'
echo '   NOTE: If you are using a non-zero offset for the port numbers,'
echo '   the port number will be different from 3000.'
echo '9. Click on "Save Changes".  If all goes well, your'
echo '   App ID and App Secret are now provided.'
echo
echo '++++++++++++++++++++++++++'
echo 'Enter the Facebook App ID:'
read FACEBOOK_ID

echo 'Enter the Facebook App Secret:'
read FACEBOOK_SECRET

echo FACEBOOK_OAUTH_KEY=$FACEBOOK_ID >> .env
echo FACEBOOK_OAUTH_SECRET=$FACEBOOK_SECRET >> .env
