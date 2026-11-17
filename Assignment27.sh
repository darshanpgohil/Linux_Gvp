#!/bin/bash

read -p "Enter The Disk Usage Limit (%) : " limit

usage=$(df / | tail -1 | awk '{print $5}' | tr -d '%')

if [ "$usage" -gt "$limit" ];
then
  echo "Disk Usage Limit Exiest Specified Limit"
else
  echo "Disk Usage Is Normal"
fi
