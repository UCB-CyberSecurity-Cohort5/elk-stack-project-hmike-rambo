#!/bin/bash

#create /var/backup if it doesn't exist
mkdir -p /var/backup

#create new /var/backup/home.tar
tar cvf /var/backup/home.tar /home

#moves the files 
mv /var/backup/home.tar /var/backup/home.01012020.tar

#create an archive and save it
tar cvf /var/backup/system.tar /home

#list all files and save those files including files sizes
ls -lh /var/backup > /var/backup/file_report.txt

#print free memory and save
free -h > /var/backup/disk_report.txt

