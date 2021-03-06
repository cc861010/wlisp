#!/usr/bin/env bash
set -e
echo -e "\n------------------ add user ------------------"

# default username and userpassword
name=bear
password=bear

# set user name
if [ $USER_NAME ];then
        name=$USER_NAME
        echo "USER_NAME = $USER_NAME"
else
        echo "USER_NAME = $name"
fi

# set user password
if [ $USER_PASSWORD ];then
        password=$USER_PASSWORD
        echo "USER_PASSWORD = $USER_PASSWORD"
else
        echo "USER_PASSWORD = $password"
fi

# create user
echo "create user.."
if [ $(getent passwd $name) ] ; then
    echo "$name exists!"
else
    useradd -m $name
    adduser $name sudo
    echo -e "${password}\n${password}" | passwd $name
fi
usermod -s /bin/bash $name

# login with no-root user
service ssh start
/bin/su -l $name -c 'export TERM=xterm && /app/gotty -w emacs'




