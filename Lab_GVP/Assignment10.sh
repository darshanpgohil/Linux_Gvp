#!/bin/bash

read -p "Enter The Directory Name : " dir

for ext in txt py png pdf
do
	count=$(find "$dir" -type f -name "*.$ext" | wc -l)
	echo "$ext : $count"
done
