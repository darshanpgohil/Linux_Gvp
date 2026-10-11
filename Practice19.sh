#!/bin/bash

echo "Linux Distribution : " cat /etc/os-release | grep PERRTY_NAME

echo "Linux Kernel Version : " uname -r

echo "Linux Hostname : " hostname

echo "Cpu Architecture : " uname -m

echo "Memory Information : " free -h

echo "System uptime : " uptime -p
