#!/bin/bash

read -p "Enter The Username : " uname

if id "$uname"
then
       groups "$uname"
else
      echo "User Not Exiest"
exit 1
fi
