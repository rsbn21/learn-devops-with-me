#!/bin/bash

mkdir -p bash_demo
cd bash_demo

touch demo.txt

current_date=$(date +%F)

echo "This file was created by a bash script on $current_date" > demo.txt

echo "Directory 'bash_demo' created. File 'demo.txt' created"

file_content=$(cat demo.txt)

echo "File content: $file_content"
