#!/bin/bash

echo PORT=3000 > .env

echo '***************************'
echo 'GitHub OmniAuth credentials'
echo '***************************'
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

echo '*****************************'
echo 'Facebook OmniAuth credentials'
echo '*****************************'
echo '----------------------------------------------------'
echo 'Follow these steps to get your Facebook credentials:'
echo '1. Log into your Facebook account.'
echo '2. Go to https://developers.facebook.com/ .'
echo '3. Click on "My Apps".'
echo '4. If you already created an OAuth app, click on it.'
echo '   Get your Facebook App ID and App Secret.'
echo '   Make sure that the port number in your app domain URL'
echo '   is correct for your Docker container.'
echo '   If necessary, add the appropriate URL.'
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

echo '***************************'
echo 'Google OmniAuth credentials'
echo '***************************'
echo '--------------------------------------------------'
echo 'Follow these steps to get your Google credentials:'
echo '1. Log into your Google account.'
echo '2. Go to https://console.developers.google.com/ .'
echo '3. Click on "Credentials".'
echo '4. If you already created an OAuth app, click on it.'
echo '   Get your Google Client ID and Client Secret.'
echo '   Make sure that the port number in your app domain URL'
echo '   is correct for your Docker container.'
echo '   If necessary, add the appropriate URL.'
echo '   Then skip ahead to enter your credentials.'
echo '5. If you did not already create an OAuth app, click on'
echo '   Create Credentials -> Create OAuth client ID'.
echo '6. Click on "Web Application".'
echo '7. Use "bridge_troll" as the name.'
echo '8. Enter "http://localhost:3000" under Authorized JavaScript origins.'
echo '   NOTE: If you are using a non-zero offset for the port numbers,'
echo '   the port number will be different from 3000.'
echo '9. Enter "http://localhost:3000/users/auth/google_oauth2/callback"'
echo '   under Authorized redirect URIs.'
echo '   NOTE: If you are using a non-zero offset for the port numbers,'
echo '   the port number will be different from 3000.'
echo '10. Click on "Create".  If all goes well, your'
echo '    App ID and App Secret are now provided.'
echo
echo '++++++++++++++++++++++++++'
echo 'Enter the Google Client ID:'
read GOOGLE_ID

echo 'Enter the Google Client Secret:'
read GOOGLE_SECRET

echo GOOGLE_OAUTH_KEY=$GOOGLE_ID >> .env
echo GOOGLE_OAUTH_SECRET=$GOOGLE_SECRET >> .env
