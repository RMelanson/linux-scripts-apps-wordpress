#!/bin/bash

# WORDPRESS CONFIGURATION PARAMETERS
bootstrap ="WordpressBootstrap.sh"
gitRepo="linux-scripts-apps-wordpress.git"

pkg=WORDPRESS
scriptType="apps"
parentDir="/tmp/scripts/$scriptType/"
installDir="$parentDir/$pkg"

mySqlAdmin=admin
mySqlOwner=mySql
mySqlGroup=mySql
mySqlHome=/opt/mySql
mySqlLog=/var/log/mySql
