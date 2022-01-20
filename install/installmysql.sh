#Install MySQL

mysq_installed () {
  if [ -f /etc/init.d/mysql* ]; then {
    return 0;
  }
  else {
    return -1;
  }
  fi
}

if ! mysq_installed
  then {
    echo "MYSQL not installed"
    echo '===================== Installing mysql server ==================================='
    echo BEFORE PWD = $PWD
    wpDir=$PWD

    rpm -qa | grep mysql
    yum install mysql-server -y
    service mysqld status
    service mysqld start

    echo installmysql.sh cd to $installDir

    cd $installDir
    #source ./install/wpcmds.sql

    #exit;
    cd $wpDir
  }
  else {
    echo "MYSQL installed"
  }
fi

