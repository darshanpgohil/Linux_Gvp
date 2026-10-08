#!/bin/bash

read -p "Enter The Directory Name : " dir

if [ ! -d "$dir" ];
then
	echo "'$dir' No Such File Or Directory Found"
	exit 1
fi

find "$dir" -type f -name "*.obj" -delete

find "$dir" -type f -name "*.lst" -delete

find "$dir" -type f -size 0 -delete
