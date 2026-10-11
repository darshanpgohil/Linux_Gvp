#!/bin/bash

echo "Cpu usage : " top -bn1 | grep "CPU(s)" | awk print '{" User : " $2 "%, System : " $4 "%, Idle : " ,$8 "%"}'

echo "Memory Usage : " free -h

echo "Directory usage : " df -h

echo "System uptime : " uptime -p

echo "Login User :  " who

echo "Running Processes : " ps -aux
