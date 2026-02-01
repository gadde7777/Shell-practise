#!/bin/bash

set -e #ERR

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
echo "please run script with root user"
exit 1
fi

mkdir -p $LOGS_FOLDER


for package in $@
do
   dnf list installed $package &>>$LOGS_FILE
   if [ $? -ne 0 ]; then
     echo "$package not installed, installing now"
     dnf install $package -y &>>$LOGS_FILE
 else
    echo -e "$package already installed. $Y skipping $N"
    fi
done