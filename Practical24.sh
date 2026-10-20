#!/bin/bash

read -p "Enter The Service name : " service

if systemctl is-active --quite "$service"
then 
         echo "$service is running"
else
         echo "$service is not running"
fi
