! /bin/bash

# SETUP THE ENVIRONMENT
echo EXECUTING: Wordpres Setup.sh . ./env/setEnv.sh $*
#. ./env/setEnv.sh $*
#MySQL Params

# #Install Web Server
echo EXECUTING: Wordpres Setup.sh . ./install/installwebserver.sh
#. ./install/installwebserver.sh

# #Install php-mysql
echo EXECUTING: Wordpres Setup.sh . ./install/installphpmysql.sh
. ./install/installphpmysql.sh

# #Install WordPress
echo EXECUTING: Wordpres Setup.sh . ./install/installwordpress.sh
. ./install/installwordpress.sh

# #Install MySQL
echo EXECUTING: Wordpres Setup.sh . ./install/installmysql.sh
. ./install/installmysql.sh

# #Configure WordPress
echo EXECUTING: Wordpres Setup.sh . ./install/configurewp.sh
. ./install/configurewp.sh

