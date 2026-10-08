#!/bin/bash

addition(){
num1=$1
num2=$2

num3=$((num1+num2))

echo "Sum : $num3"
}

subtraction(){
num1=$1
num2=$2

num3=$((num1-num2))

echo "Sub : $num3"
}

multiplication()
{
num1=$1
num2=$2

num3=$((num1*num2))

echo "Mul : $num3"
}

division()
{
num1=$1
num2=$2

num3=$((num1/num2))

echo "Div : $num3"
}

read -p "Enter The Choice : " ch

case $ch in
	1)
	  read -p "Enter The Number1 : " num1
	  read -p "Enter The Number2 : " num2
	  addition $num1 $num2
	;;
	2)
	  read -p "Enter The Number1 : " num1
	  read -p "Enter The Number2 : " num2
	  subtraction $num1 $num2
	;;
	3)
	  read -p "Enter The Number1 : " num1
    	  read -p "Enter The Number2 : " num2
	  multiplication $num1 $num2
 	;;
	4)
	  read -p "Enter The Number1 : " num1
	  read -p "Enter The Number2 : " num2
	  division $num1 $num2
	;;
	*)
	  echo "Wrong Choice"
	;;
esac
