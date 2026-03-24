
#!/bin/bash

logfile=/var/log/backup_script.log
errorlog=/var/log/backup_script_error.log


echo "Date of Execution: $(date)" 2>>$errorlog

#Checking the existence of a backup folder
##If it doens't exist, the script will create one at /home/backup

echo "Checking the existence of the /home/backup-folder/ ..." 2>>$errorlog
sleep 2

if [ -d /home/backup-folder/ ]
then
	echo "Folder confirmed. Proceeding." 2>>$errorlog
	sleep 2
else
	echo "Folder not found." 2>>$errorlog
	sleep 2
	echo "Creating the /home/backup/ folder" 2>>$errorlog
	mkdir /home/backup-folder 2>>$errorlog
fi

#Checking the number of arguments passed by the user

if [ $# -ne 1 ]
then
	echo "Incorrect number of arguments ($#). Please insert 1 folder to backup." 2>>$errorlog
	exit 1

else
	sleep 0.1
fi

#Creating Backup of the folder inserted as argument by the user
if [ -d $1 ]
then
	echo "Creating a backup of the folder $1 inserted by the user..." 2>>$errorlog
	sleep 2
	sudo cp $1 /home/backup-folder 2>>$errorlog
	sleep 2
	echo "Backup of the $1 folder was created at /home/backup-folder/"  2>>$errorlog
	sleep 2
else
	echo "The folder $1 does not exist. Terminating backup operation." 2>>$errorlog
fi

