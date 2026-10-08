#!/bin/bash

read -p "Enter The Number : " number

sum=0

for ((i=1;i<=$number;i++))
do
	sum=$((sum+i))
done

echo "Sum Of N Number Is : $sum"
