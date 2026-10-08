#!/bin/bash

read -p "Enter The Directory Name : " dir
read -p "Enter The File Name : " fname

if [ -d "$dir" ];
then
	find "$dir" -type f -name "$fname" 
else
	echo "Directory Not Exiest"
fi
