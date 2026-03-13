#!/bin/bash
#Automates updates to the system distribution

release_file=/etc/os-release
log_result=/var/log/update.log
error_log=/var/log/update_error.log

if grep -q "Arch" $release_file
then
	#In case you're running an Arch distribution
	echo "Installing your new system update"
	sudo pacman -Syu 1>>$log_result 2>>$error_log
	if [ $? -ne 0 ]
	then
		echo "An error occurred. Update failed"
	fi
fi

if grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file
then
	#In case you're running Linux
	echo "Installing your new system update"
	sudo apt update 1>>$log_result 2>>$error_log
	if [ $? -ne 0 ]
	then
		echo "An error occurred. Update failed"
	fi
	sudo apt dist-upgrade 1>>$log_result 2>>$error_log
	if [ $? -ne 0 ]
	then
		echo "An error occurred. Update failed."
	fi
fi


