#!/bin/bash

#Setting reference to the current directory
wpCurrDir=$PWD

echo "The order of arguments is Mysql dbName, userName, dbpwd"

# Ensure script is running under root
if [ "$EUID" -ne 0 ]
  then echo "Error Cannot Proceed, Must Run as Root or Under Sudo"
  exit -1
fi

echoLog(){
 echo $* 2>&1 | tee -a setup.log
}

#Git initialization installation
#yum install git -y

#Set Cloning Properties
#Need to setup to install wordpress under scripts/apps/
pkg=wordpress
gitRepo="linux-scripts-apps-wordpress.git"
wpDownloadDir="/tmp/apps/wordpress"
folderDir="/tmp/apps"
#if [ -f ~/.ssh/gitHub.key ]; then
   #clone="git clone git@github.com:RMelanson/"
#else
   #clone="git clone https://github.com/RMelanson/"
#fi

# Clone $pkg
echo Executing $clone$gitRepo $wpDownloadDir
$clone$gitRepo $wpDownloadDir

# Setup $pkg
cd $wpDownloadDir

# MAKE ALL SHELL SCRIPTS EXECUTABLE TO ROOT ONLY
#Ensure under root
find . -name "*sh" -exec chmod 700 {} \;

#cd ./install/bootstraps/mysql/
#./mySQLBootstrap.sh

cd $wpDownloadDir
. ./setup.sh $* 2>&1 | tee setup.log

cd $wpCurrDir
#Remove Root Files now
#Go to install directory to remove root files
cd $folderDir
rm -rf wordpress
cd $wpCurrDir
