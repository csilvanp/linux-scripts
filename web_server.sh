#!/bin/bash
project_zip='' # change this to the url for your .zip project file

echo "Updating the server..."
apt-get update && apt-get upgrade -y

echo "Installing required services..."
apt-get install apache2 unzip -y

echo "Copying files for web folder..."
cd /tmp && wget $project_zip
unzip main.zip # if your .zip file has a different name, change it
cd main-folder # change to your folder path
cp -R * /var/www/html