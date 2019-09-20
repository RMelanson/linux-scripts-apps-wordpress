#!/bin/bash

# WORDPRESS CONFIGURATION PARAMETERS
bootstrap ="WordpressBootstrap.sh"
gitRepo="linux-scripts-apps-wordpress.git"

pkg=WORDPRESS
scriptType="apps"
parentDir="/tmp/scripts/$scriptType/"
installDir="$parentDir/$pkg"

wpSiteName=mySql
wpAdminId=admin
wpAdminPassword=mySql
wpInstallDirectory=./$siteName

wpAdmin=admin
mySqlOwner=mySql
mySqlGroup=mySql
mySqlHome=/opt/mySql
mySqlLog=/var/log/mySql

pkgOwner=ec2-user

echo Setting External Args
echo These Arguments Overwrite Default Argument Settings
for arg in "$@"; do
  echo setArgs EXECUTING: export $arg
  export $arg
done
