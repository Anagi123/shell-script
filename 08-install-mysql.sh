#!/bin/bash

#our program goal is to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]

then 
    echo "ERROR::Please run this script with root access"
    exit 1
# else
#   ech0 "INFO::you are root user"
fi    

yum install mysql-y 