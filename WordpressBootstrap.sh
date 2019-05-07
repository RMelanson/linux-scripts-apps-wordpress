#!/bin/bash
bootstrapDir=$PWD
bootstrap=$bootstrapDir/WordpressBootstrap.sh

# Ensure script is running under root
if [ "$EUID" -ne 0 ]
then
   sudo -n true 2/dev/null 2>&1
   passwordRequired=$?

   if [ "$passwordRequired" == "1" ]; then
       echo "Please run as root or under user with sudo access sudo"
   else
       sudo chmod +x $bootstrap
       sudo $bootstrap
   fi
   return 1
fi

#Git initialization installation
yum install git -y

# SETUP ENVIRONMENT AND PARAMETERS
wpCurrDir=$PWD
pkg=WORDPRESS
gitRepo="linux-scripts-apps-wordpress.git"
installDir="/tmp/apps/$pkg"

if [ -f ~/.ssh/gitHub.key ]; then
   clone="git clone git@github.com:jasonantao/"
else
   clone="git clone https://github.com/jasonantao/"
fi

# Clone $pkg
echo Executing $clone$gitRepo $installDir
$clone$gitRepo $installDir

# Setup $pkg
cd $installDir

# MAKE ALL SHELL SCRIPTS EXECUTABLE TO ROOT ONLY
find . -name "*sh" -exec chmod 700 {} \;

cd ./install/bootstraps/mysql/
./mySQLBootstrap.sh

cd $installDir
. ./setup.sh 2>&1| tee setup.log

cd $bootstrapDir

