#!/bin/bash

USERID=$(id -u)

echo "what is userid :$USERID"

if [ $USERID -ne 0 ]; then
echo "please run script with root user"
fi

echo "Instaling nginx"
dnf install nginx -y