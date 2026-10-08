#!/bin/bash

if [ "$#" -ne 1 ];
then
	echo "$0 <Month>"
	exit 1
fi

cal $1

