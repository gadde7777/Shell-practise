#!/bin/bash

USERID=$(id -u)

echo "what is userid :$USERID"

if [ $USERID -ne 0 ]; then
echo "please run script with root user"
exit 1
fi

echo "Instaling nginx"
dnf install nginxx -y

if [ $? -ne 0 ]; then
echo "Installing Nginx ...Failure"
exit 1
else
echo "Installing Ngix ... Success"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
echo "Installing Mysql ...Failure"
exit 1
else
echo "Installing Mysql ... Success"
fi

dnf install nodejs -y

if [ $? -ne 0 ]; then
echo "Installing nodejs ...Failure"
exit 1
else
echo "Installing nodejs... Success"
fi