#!/bin/bash

read -p "Enter The Hostname Or Ip Address : " host

ping -c 4 "$host" > /dev/null

if [ "$?" -eq 0 ];
then
  echo "Network Is Connected"
else
  echo "Network Is Not Connected"
fi
