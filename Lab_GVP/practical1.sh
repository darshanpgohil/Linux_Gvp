#!/bin/bash

read -p "Enter The Number : " number

if [ $number -gt 0 ];
then
	echo "$number Is Positive"
elif [ $number -lt 0 ];
then
	echo "$number Is Negative"
else
	echo "$number Is = 0"
fi

if [ $((number%2)) -eq 0 ]; 
then
	echo "$number is Even"
else
	echo "$number is Odd"
fi
