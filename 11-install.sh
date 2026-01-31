#!/bin/bash

USERID=$(id -u)

echo "what is userid :$USERID"

if [ $USERID -ne 0 ]; then
echo "please run script with root user"
exit 1
fi

#BY Default shell will not execute
VALIDATE(){
if [ $1 -ne 0 ]; then
      echo "$2 ...Failure"
      exit 1
else
     echo "$2 ... Success"
fi
}

dnf install nginx -y
VALIDATE $? "Nginx Installation"

dnf install mysql -y
VALIDATE $? "Installing Mysql"

dnf install nodejs -y
VALIDATE $? "Installing nodejs"

