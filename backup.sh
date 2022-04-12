#!/bin/bash

echo 'What do you want to copy'
read backup_files

echo 'Where'
read dest

day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

tar czf $dest/$archive_file $backup_files

echo "Backup finished"


