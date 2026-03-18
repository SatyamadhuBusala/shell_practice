#!/bin/bash
USERID=$(id-u)
if [$USERID -ne 0 ]; then
    echo "ERROR : please run the script in root user"
    exit 1
fi
dnf install mysql -y
if [ $? -ne 0 ]; then 
    echo "ERROR: installing MYSQL is failure "
    exit 1
else
    echo "Installing MYSQL is SUCCRSS"
fi
