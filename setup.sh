#! /bin/bash
setupName=setup.sh:

# SETUP THE ENVIRONMENT
echo "$setupName: EXECUTING: . ./env/setEnv.sh $*"
. ./env/setEnv.sh $*

# COPY RESTORE 
cp $pkg_RESTORE.sh ..

#Install Web Server
. ./install/installwebserver.sh

#Install php-mysql
. ./install/installphpmysql.sh

#Install WordPress
. ./install/installwordpress.sh

#Install MySQL
. ./install/installmysql.sh

#Configure WordPress
. ./install/configurewp.sh

