#!/bin/bash

# This script automates the creation of directories and files

mkdir -p bash_demo # create directory
cd bash_demo # go into that directory that was just created

touch demo.txt # create an empty file

current_date=$(date +%F) # variable that shows the current date

echo "This file was created by a bash script on $current_date" > demo.txt

echo "Directory 'bash_demo' created. File 'demo.txt' created"
# the two echo command lines put the content into the file

file_content=$(cat demo.txt) # variable for checking content of a file

echo "File content: $file_content"
