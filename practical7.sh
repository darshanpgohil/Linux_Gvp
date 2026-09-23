echo "1. UserAdd || 2. UserDelete || 3. UserModify || 4. Password Change || 5. User Account Lock || 6. User Account Unlock || 7. Display User Information || 8. Display User Group || 9. Display All System Users \n 10. Check Whether a User Exies \n 11. Display Currently logged-in users \n 17. Exit"

read -p "Enter Your Choice : " ch

case $ch in
	1) 	read -p "Enter The Username : " username 
		sudo useradd -m "$username"
		if [ "$?" -eq 0 ];
		then
			echo "UserAdd Successfully"
		else
			echo "UserAdd Failed"
		fi
		;;
	2)
		read -p "Enter The Username : " usernm
		sudo userdel $usernm
		
		if [ "$?" -eq 0 ];
		then
			echo "UserDeleted Successfully"
		else
			echo "UserDelete Failed"
		fi
		;;
	3)	read -p "Enter The Old userName : " oldName
		read -p "Enter The New userName : " newName
		sudo usermod -l "$newName" "$oldName"

		if [ "$?" -eq 0 ];
		then
			echo "User Modify Successfully"
		else
			echo "User Not Exiest"
		fi
		;;
	4)	read -p "Enter The Username : " userName
		sudo passwd "$userName"
		if [ "$?" -eq 0 ];
		then
			echo "Password Changed"
		else
			echo "Password Can't Changed"
		fi
		;;
	5)	read -p "Enter The Username : " userName

		if id "$userName" &>/dev/null
		then
			sudo usermod -L "$userName"
			echo "User Account Lock SuccessFully"
		else
			echo "User Account Can't Lock"
		fi
		;;
	6)	read -p "Enter The Username : " userName

		if id "$userName" &>/dev/null
		then
			sudo usermod -U "$userName"
			echo "User Account Unlocked Successfully"
		else
			echo "User Account Can't Unlock"
		fi
		;;
	7)	whoami
		id 
		uname -a
		;;
	8)      read -p "Enter The Username : " userName
		gp=$(id -nG "$userName")
		if [ "$?" -eq 0 ];
		then
			echo "User Group : " $gp
		else
			echo "No User/Group Found"
		fi
		;;
	9)      cut -d: -f1 /etc/passwd
		;;
	10)	read -p "Enter The Username : " userName
		
		id "$userName"

		if [ "$?" -eq 0 ];
		then
			echo "User Exiest"
		else
			echo "User Not Exiest"
		fi
		;;
	11)	w -h
		;;
	12)	chsh -s /usr/bin/sh
	;;
	13)	read -p "Enter The Username : " username
		sudo usermod -d /home/linux41/260160450301/linux/users_home -m "$username"
		;;
	14)	read -p "Enter The Username : " username
		sudo chage -E 2026-09-30 "$username"
	;;
	15)
	;;
	16)
	;;
	17) "Exit"
	;;
	*) echo "Wrong Choice"
	;;
esac
