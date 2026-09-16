#!/bin/bash

# The task was to create a script which creates a backup directory with all files backed up
# User input gives a source directory, checks whether this directory exists and creates a backup directory if the backup does not exist
# it also gives the directory a timestamp of when the backup was created

echo "Enter source directory"
read dir

current_date="$(date +%F_%T)"

if [ -d "$dir" ]; then
    if [ ! -d "$dir"_backup_"$current_date" ]; then
    mkdir "$dir"_backup_"$current_date"
    fi
else 
    exit 
fi 

backup="$dir"_backup_"$current_date"

cp "$dir"/*.txt "$backup" # Copies all text files of the directory into the backup

file_count=$(ls "$backup" | wc -l) # It also counts the amount of files backed up

echo "Backup directory created: $backup, Copying .txt files..."
echo "Backup complete! Files backed up =$file_count"