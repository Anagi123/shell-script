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