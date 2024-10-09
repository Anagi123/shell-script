#!/bin/bash

# our programme goal is to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:please run this script with root access"
    exit 1
# else
#     echo "INFO: you are root user"
fi     

yum install mysql -y
# it is our responsibility again to check instakkation is success or not
yum install mysqllll -y

if [ $? -ne 0 ]
then 
    echo "install of mysql is error"
    exit 1
elso
    echo "installation of mysql is success"
fi    