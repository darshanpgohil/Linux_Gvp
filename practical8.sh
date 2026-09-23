#!/bin/bash

if [ "$#" -lt 2 ];
then
	echo "usage $0"
	exit 1
fi

output=$1

>"$output"

for file in "$@"
do
	if [ "$file" = "$output" ];
	then
		continue
	fi

	if [ -f "$file" ];
	then
		echo "***filename:$file***" >> "$output"
		cat "$file" >> "$output"
		echo >> "$output"

		echo "File Concate Successfully in $output"
	else
		echo "$file does not exiest"
	fi
done
