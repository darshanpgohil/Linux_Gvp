#!/bin/bash
file="birthday.txt"
today="$(date +'%d-%m')"
while IFS=: read -r name login birthday
do
        name=$(echo "$name" | xargs)
        login=$(echo "$login" | xargs)
        birthday=$(echo "$birthday" | xargs)
        echo "$today $birthday"
        if [ "$birthday" = "$today" ];
        then
                if who | awk '{print $1}' | grep -qx "$login"
                then
                        echo "Happy Birthday, $name!"
                        echo "whishing you a very happy birthday"
                        echo "Happy Birthday, $name! Have a wonderfull day!" | write "$login"
                fi
        fi
done < "$file"
