#!/bin/bash

#Script to update the local system via terminal command

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/update_error.log

if grep -q "Arch" $release_file
then
	#In case you're running an Arch system
	sudo pacman -Syu 1>>$logfile 2>> $errorlog
	if [ $? -ne 0 ]
	then
		echo "An error occurred, please check the $errorlog file."
	fi
fi

if grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file
then
	#In case you're running an Ubuntu distribution
	sudo apt update 1>>$logfile 2>>$errorlog 
	if [ $? -ne 0 ]
	then
		echo "An error occurred, please check the $errorlog file."
	fi
	sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
		echo "An error occurred, please check the $errorlog file."
	fi
fi
