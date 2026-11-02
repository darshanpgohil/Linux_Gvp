#!/bin/bash

echo "Enter directory name:"
read dir

if [ -d "$dir" ]
then
    find "$dir" -type f \( -name "*.obj" -o -name "*.lst" -o -size 0c \) -delete

    echo "Files deleted successfully."
else
    echo "Directory does not exist."
fi
