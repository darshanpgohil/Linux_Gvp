#!/bin/bash

echo "Linux Service Status"

echo "================="

services="ssh cron NetworkManager ufw"

for service in $services
do
       if systemctl is-active --quite "$service" then
          echo "$service is Running"
       else
          echo "$service is Stopped"
       fi
done
