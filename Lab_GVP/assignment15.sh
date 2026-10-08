#!/bin/bash

read -p "Enter The Path : " path

if [ -d "$path" ]; 
then
	echo "This Is Directory"
elif [ -f "$path" ];
then
	echo "This Is File"
elif [ -L "$path" ];
then
	echo "Symbolic Link"
else
	echo "Does Not Exiest"
fi
