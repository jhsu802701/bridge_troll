#!/bin/bash

echo PORT=3000 > .env

echo '*****************************'
echo 'Facebook OmniAuth credentials'
echo '*****************************'
echo '----------------------------------------------------'
echo 'Follow these steps to get your Facebook credentials:'
echo '1. Log into your Facebook account.'
echo '2. Go to https://developers.facebook.com/ .'
echo '3. Click on "My Apps".'
echo '4. If you already created this OAuth app, click on it.'
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
echo 'GitHub OmniAuth credentials'
echo '***************************'
echo '--------------------------------------------------'
echo 'Follow these steps to get your GitHub credentials:'
echo '1. Log into your GitHub account.'
echo '2. Go to https://github.com/settings/profile .'
echo '3. Click on "Developer settings".'
echo '4. If you already created this OAuth app, click on it and'
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

echo '***************************'
echo 'Google OmniAuth credentials'
echo '***************************'
echo '--------------------------------------------------'
echo 'Follow these steps to get your Google credentials:'
echo '1. Log into your Google account.'
echo '2. Go to https://console.developers.google.com/ .'
echo '3. Click on "Credentials".'
echo '4. If you already created this OAuth app, click on it.'
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

echo '***************************'
echo 'Meetup OmniAuth credentials'
echo '***************************'
echo '--------------------------------------------------'
echo 'Follow these steps to get your Meetup credentials:'
echo '1. Log into your Meetup account.'
echo '2. Go to https://secure.meetup.com/meetup_api/oauth_consumers/ .'
echo '3. If you already created this OAuth app, click on it.'
echo '   Get your Meetup Client ID and Client Secret.'
echo '   Make sure that the port number in your app domain URL'
echo '   is correct for your Docker container.'
echo '   If necessary, add the appropriate URL.'
echo '   Then skip ahead to enter your credentials.'
echo '4. If you did not already create an OAuth app, click on'
echo '   "Create one now"'.
echo '5. Enter "bridge_troll" for the consumer name.'
echo '6. Enter "http://localhost:3000/users/auth/meetup/callback"'
echo '   for the redirect URI'
echo '   NOTE: If you are using a non-zero offset for the port numbers,'
echo '   the port number will be different from 3000.'
echo '7. Read the terms of service, and toggle on "Yes, I agree".'
echo '8. Click on "Register Consumer".  If all goes well, your'
echo '   App ID and App Secret are now provided.'
echo ''
echo '+++++++++++++++++++++++++++'
echo 'Enter the Meetup Client ID:'
read MEETUP_ID

echo 'Enter the Meetup Client Secret:'
read MEETUP_SECRET

echo MEETUP_OAUTH_KEY=$MEETUP_ID >> .env
echo MEETUP_OAUTH_SECRET=$MEETUP_SECRET >> .env

echo '****************************'
echo 'Twitter OmniAuth credentials'
echo '****************************'
echo '---------------------------------------------------'
echo 'Follow these steps to get your Twitter credentials:'
echo '1. Log into your Twitter account.'
echo '2. Go to https://developer.twitter.com/en/apps .'
echo '   If you have not already done so, click on "Apply"'
echo '   to apply for Twitter developer access.'
echo '3. If you already have Twitter developer access, click on "Apps".'
echo '4. If you already created this OAuth app, click on its'
echo '   corresponding "Details" button.'
echo '   Make sure that the '
echo '   Get your Twitter API Key and API Secret Key (NOT access tokens).'
echo '   Make sure that the port number in your app domain URL'
echo '   is correct for your Docker container.'
echo '   If necessary, add the appropriate URL.'
echo '   Then skip ahead to enter your credentials.'
echo '5. If you did not already create the OAuth app,' 
echo '   click on "Create an App".'
echo '6. Enter "bridge_troll" for the app name'.
echo '7. Enter the following description:'
echo '   Local version of the RailsBridge Bridge Troll site'
echo '8. For the website URL, enter "https://www.bridgetroll.org/".'
echo '9. Toggle on "Enable Sign in with Twitter".'
echo '10. For the callback URL, enter "http://localhost:3000/users/auth/twitter/callback".'
echo '    NOTE: If you are using a non-zero offset for the port numbers,'
echo '    the port number will be different from 3000.'
echo '11. Enter the following description on how the app will be used:'
echo '    This app will be used for working on the RailsBridge Bridge Troll site'
echo '    at https://www.bridgetroll.org/.'
echo '12. Click on "Create".  If all goes well, your'
echo '    App ID and App Secret are now provided.'
echo
echo '++++++++++++++++++++++++++'
echo 'Enter the Twitter API Key:'
read TWITTER_ID

echo 'Enter the API Secret Key:'
read TWITTER_SECRET

echo TWITTER_OAUTH_KEY=$TWITTER_ID >> .env
echo TWITTER_OAUTH_SECRET=$TWITTER_SECRET >> .env
