#!/bin/bash

today=$(date +%d+%m)

while IFS=: read -r username login_name birthday
do
	if [ "$birthday" = "$today" ];
	then
		if who | awk '{print $1}' | grep -Fxq "$login_name"
		then
			echo "Happy Birthday $username!" | write "$login_name" 
		fi
	fi
done < birthday.txt