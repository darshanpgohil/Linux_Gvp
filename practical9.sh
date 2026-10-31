#!/bin/bash

if [ "$#" -eq 0 ]
then
    dir="."
else
    dir="$1"
fi

if [ -d "$dir" ]
then
    for file in "dir/"*
    do
              if [ -f "$file" ] && file "$file" | greb -q "text"
              then
                            echo "$file"
              fi
    done
else
    echo "Directory Not Exiest"
fi
