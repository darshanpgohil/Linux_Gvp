#!/bin/bash

if [ -z "$1" ];
then
	echo "Usage $0"
	exit 1
fi

search_dir="$1"

if [ ! -d "$search_dir" ];
then
	echo "Error : '$search_dir' No Such Directory"
fi

find "$search_dir" -type f -size 0 -print
