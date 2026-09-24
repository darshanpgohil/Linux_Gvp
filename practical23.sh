if [ "$EUID" -ne 0 ];
then
	echo "Please run this script with sudo / root privileges
	exit 1
fi

while true
do
echo "1. UserAdd || 2. UserDelete || 3. UserModify || 4. Password Change || 5. User Account Lock || 6. User Account Unlock || 7. Display User Information || 8. Display User Group || 9. Display All System Users || 10. Check Whether a User Exies || 11. Display Currently logged-in users || 12. Change User's login shell || 13. Change user's home directory || 14. Set account Expiration Date || 15. Display Account Aging information || 16. Remove a user along with their home directory ||  17. Exit"

read -p "Enter Your Choice : " ch

case $ch in
	1) 	read -p "Enter The Username : " username 
		if id "$username" &>/dev/null
		then
			echo "User Already Exiest"
		else
			sudo useradd -m "$username"
			if [ "$?" -eq 0 ];
			then
				echo "UserAdd Successfully"
			else
				echo "UserAdd Failed"
			fi
		fi
		;;
	2)
		read -p "Enter The Username : " usernm

		if id "$usernm" &>/dev/null
		then
			read -p "Are You Sure you want to delete $usernm (y/n) : " confirm
			if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ];
			then
				sudo userdel $usernm
				if [ "$?" -eq 0 ];
				then
					echo "UserDeleted Successfully"
				else
					echo "UserDelete Failed"
				fi	
			else
				echo "User Delete Cancle"
			fi
		else
			echo "User Not Exiest"
		fi
		;;
	3)	read -p "Enter The Old userName : " oldName
		read -p "Enter The New userName : " newName

		if id "$oldName" &>/dev/null
		then
			sudo usermod -l "$newName" "$oldName"

			if [ "$?" -eq 0 ];
			then
				echo "User Modify Successfully"
			else
				echo "User Modify Failed"
			fi
		else
			echo "User Not Exiest"
		fi
		;;
	4)	read -p "Enter The Username : " userName
		if id "$userName" &>/dev/null
		then
			sudo passwd "$userName"
			if [ "$?" -eq 0 ];
			then
				echo "Password Changed"
			else
				echo "Password Can't Changed"
		else 
			echo "User Not Exiest"
		fi
		;;
	5)	read -p "Enter The Username : " userName

		if id "$userName" &>/dev/null
		then
			sudo usermod -L "$userName"

			if [ "$?" -eq 0 ];
				echo "User Account Lock SuccessFully"
			else
				echo "User Account Lock Failed"
			fi
		else
			echo "User Not Exiest"
		fi
		;;
	6)	read -p "Enter The Username : " userName

		if id "$userName" &>/dev/null
		then
			sudo usermod -U "$userName"

			if [ "$?" -eq 0 ];
			then
				echo "User Account Unlocked Successfully"
			else
				echo "User Account Unlocked Failed"
			fi
		else
			echo "User Not Exiest"
		fi
		;;
	7)	read -p "Enter The Username : " username
		if id "$username" &>/dev/null
			id "$username"
			getent passwd "$username"
		else
			echo "User Not Exiest"
		then
		fi
		;;
	8)  read -p "Enter The Username : " userName
		gp=$(id -nG "$userName")
		if [ "$?" -eq 0 ];
		then
			echo "User Group : " $gp
		else
			echo "No User/Group Found"
		fi
		;;
	9)   cut -d: -f1 /etc/passwd
		;;
	10)	read -p "Enter The Username : " userName
		if id "$userName" &>/dev/null
		then
			echo "User Exiest"
		else
			echo "User Not Exiest"
		fi
		;;
	11)	w -h
		;;
	12)	 read -p "Enter The Username : " username
		 read -p "Enter The Login Shell : " shell

		 if id "$username" &>/dev/null
		 then
		 	sudo usermod -s "$shell" "$username"

			if [ "$?" -eq 0 ];
				echo "User Shell Changed Successfully"
			else
				echo "User Shell Can't Changed"
			fi
		else
			echo "User Not Exiest"
		fi
		;;
	13)	read -p "Enter The Username : " username

		if id "$username" &>/dev/null
		then
			sudo usermod -d /home/linux41/260160450301/linux/users_home -m "$username"

			if [ "$?" -eq 0 ];
			then
				echo "User Home Directory Changed Success"
			else
				echo "User Home Directory Changed Failed"
			fi
		else
			echo "User Not Exiest"
		fi
		;;
	14)	read -p "Enter The Username : " username
		read -p "Enter The Expiration Date (YYYY-MM-DD) : " expire_date
		if id "$username" &>/dev/null
		then
			sudo chage -E "$expire_date" "$username"
            echo "User Account Expire Date Set Successfully"
		else
		    echo "User Not Exiest"
		fi
	;;
	15) read -p "Enter The Username : " username
		if id "$username" &>/dev/null
		then 
			sudo chage -l "$username"
		else
			echo "User Not Exiest"
		fi
		;;
	16)	read -p "Enter The Username : " username

		if id "$username" &>/dev/null
			read -p "Are You Sure Delete User With Home Directory (Y/N) : " confirm

			if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ];
			then
				sudo userdel -r "$username"
				
				if [  "$?" -eq 0 ];
				then
					echo "User Deleted With Home Directory Successfully"
				else
					echo "User Deleted With Home Directory unSuccessfully"
				fi
			else
				echo "Delete Cancle"
			fi
		else
			echo "User Not Exiest"
		fi
	;;
	17) 	"Exit"
			exit 0
	;;
	*) echo "Wrong Choice"
	;;
esac
done
