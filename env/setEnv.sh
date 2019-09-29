# WILDFLY CONFIGURATION PARAMETERS
pkg=mySql
mySqlAdmin=admin
mySqlOwner=mySql
mySqlGroup=mySql
mySqlHome=/opt/mySql
mySqlLog=/var/log/mySql

#Change this to see below
#MySQL Params
echo 'The dbName is: ' $1
export dbName=$1
echo 'The userName is: ' $2
export userName=$2
echo 'The dbpwd is: ' $3
export dbpwd=$3

#Change to this
echo Setting External Args
echo These Arguments Overwrite Default Argument Settings
for arg in "$@"; do
  echo setArgs EXECUTING: export $arg
  export $arg
done
