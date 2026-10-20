#!/bin/bash

while true 
do
         echo "===================="
         echo "==== SYSTEM INFORMATION MENU ===="
        "====================="

echo "1. System Information"
echo "2. Disk Usage"
echo "3. Memory Usage"
echo "4. Logged-in Users"
echo "5. Running Processes"
echo "6. Listening Ports"
echo "7. Failed Services"
echo "8. Date and Time"
echo "9. Exit"
echo "=================="

read -p "Enter Your Choice : " ch

case $ch in
      1) echo "System Information : " 
           uname -a
       ;;
      2) echo "Disk Usage : "
          df -h
      ;;
      3) echo "Memory Usage : "
          free -h
      ;;
     4) echo "Login User : "
          who
     ;;
     5) echo "Running Process : "
          ps aux
     ;;
    6) echo "Listening Ports : " 
         if command -v ss >/dev/null 2>&1
         then
              ss -lntup
         elif then command -v netstat  >/dev/null 2>&1
          else
                echo "Neither ss nor netstat is installed"
         fi
    ;;
      7) echo "Failed Services : " 
           if command -v systemctl 
           then
                    systemctl --failed
           else
                    echo "Systemctl is not available"
            fi
      ;;
     
     8) echo "Current Date and Time : "
          date
     ;;
     9) echo "Exiting The Program Good by"
          exit 0
     ;;
     *) echo "Wrong Choice Please Enter Choice Between 1 to 9 Only"
esac

echo "Press Enter To Continue....."

done￼Enter
