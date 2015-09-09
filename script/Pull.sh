#!/bin/bash
# the script is for response server to pull the source.

WEB_PATH = ''
WEB_USER = ''
WEB_USERGROUP = ''

echo "Start deployment"
cd $WEB_PATH
echo "pulling source code..."
git reset --hard origin/master
git clean -f
git pull
git checkout master
echo "changing permissions..."
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH
echo "Finished."