#!/bin/bash


# This script checks a given filename for its permissions and ouputs which permissions are set
# It starts by checking if the file exists and ultimately cycles through to check which permissions it has

echo "Enter filename to check permissions:"
read file

if [ -f $file ]; then
    echo "File '$file' exists"
    if [ -r $file ]; then
        echo "File is readable"
    else 
        echo "File is not readable"
    fi
    if [ -w $file ]; then
        echo "File is writable"
    else 
        echo "File is not writable"
    fi
    if [ -x $file ]; then
        echo "File is executable"
    else 
        echo "File is not executable"
    fi
else
    echo "File '$file' does not exist"
fi

