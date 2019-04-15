#!/bin/bash
echo -e "\033[32m"WELCOME TO JOS""

sleep 1s
time_stamp=$(date +%d-%m-%Y-%T)

mkdir -p /home/ubuntu/db_backup/$time_stamp


path=/home/ubuntu/db_backup/$time_stamp

cd $path

#mysqldump -u root -p'S#72*L9n<QQXa4b' Pro_JosInternational_03Feb16_Sud > $path/jos_live.sql

mysqldump -u root -p'whWhGP8xsmATDPMw' live_jos_international > $path/jos_new_live_060716.sql

find /home/ubuntu/db_backup -maxdepth 1 -type d -mtime +6 -exec rm -rf {} \;


