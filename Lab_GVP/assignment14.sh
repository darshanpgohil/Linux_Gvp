#!/bin/bash

read -p "Enter The Filename : " fname

if [ -f "$fname" ];
then
	echo "File Found : $(stat -c '%n' "$fname")"
	echo "File Type : $(stat -c '%F' "$fname")"
	echo "File Size :  $(stat -c '%s' "$fname")"
	echo "File Permission : $(stat -c '%A' "$fname")"
	echo "File Owner : $(stat -c '%U' "$fname")"
	echo "File Modification Time : $(stat -c '%y' "$fname")"
else
	echo "File Not Found"
fi
