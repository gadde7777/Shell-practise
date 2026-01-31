#!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

mkdir -p $LOGS_FOLDER

#BY Default shell will not execute
VALIDATE(){
if [ $1 -ne 0 ]; then
      echo "$2 ...Failure"
      exit 1
else
     echo "$2 ... Success"
fi
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Nginx Installation"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "Installing Mysql"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing nodejs"