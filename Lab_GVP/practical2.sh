#!/bin/bash

read -p "Enter The Number1 : " number1
read -p "Enter The Number2 : " number2
read -p "Enter The Number3 : " number3

if [ $number1 -gt $number2 ] && [ $number1 -gt $number3 ]; then
	echo  "$number1 is largest among three"
elif [ $number2 -gt $number1 ] && [ $number2 -gt $number3 ]; then
	echo "$number2 is largest among three"
else
	echo "$number3 is largest among three"
fi

