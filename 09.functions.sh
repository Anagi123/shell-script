#!/bin/bash

# our program goal is to install mysql

DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m" # Enable colors
G="\e[32m"
N="\e[0m"

# this function should validate the previous command and inform user it is success or failure
VALIDATE(){
    #$1 --> it will receive the argument1
if [ $1 -ne 0 ]
then 
    echo -e "$2 ... $R FAILURE $N"
    exit 1
else    
    echo -e "$2 ... $G SUCCESS $N"
fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:please run this script with root access"
    exit 1
# else
#     echo "INFO: you are root user"
fi     

# it is our responsibility again to check installation is success or not
yum install mysql -y &>>$LOGFILE
VALIDATE $? "installing mysql"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "installing postfix"

  