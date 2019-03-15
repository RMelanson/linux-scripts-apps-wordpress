#!/bin/bash

# WORDPRESS CONFIGURATION PARAMETERS
pkg=WORDPRESS
gitRepo="linux-scripts-apps-wordpress.git"
installDir="/tmp/apps/$pkg"

mySqlAdmin=admin
mySqlOwner=mySql
mySqlGroup=mySql
mySqlHome=/opt/mySql
mySqlLog=/var/log/mySql
