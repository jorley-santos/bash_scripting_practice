
#!/bin/bash

logfile=/var/log/backup_script.log
errorlog=/var/log/backup_script_error.log


echo "Date of Execution: $(date)" 1>>$logfile 2>>$errorlog

#Checking the existence of a backup folder
##If it doens't exist, the script will create one at /home/backup
if [ -d /home/backup-folder ]
then
	echo "Checking the existence of the /home/backup folder..." 1>>$logfile 2>>$errorlog
	echo "Folder confirmed." 1>>$logfile 2>>$errorlog
else
	echo  "Checking the existence of the /home/backup folder..." 1>>$logfile 2>>$errorlog
	echo "Folder not found." 1>>$logfile 2>>$errorlog
	echo "Creating the /home/backup folder" 1>>$logfile 2>>$errorlog
	mkdir /home/backup 1>>$logfile 2>>$errorlog
fi

if [ -d $1 ]
then
	echo "Creating a backup of the folder $1 inserted by the user..." 1>>$logfile 2>>$errorlog
	cp $1 /home/backup/ 1>>$logfile 2>>$errorlog
	echo "Backup of the $1 folder was created at /home/backup" 1>>$logfile 2>>$errorlog
else
	echo "The folder $1 does not exist. Please insert a valid folder as an argument to proceed with the backup." 1>>$logfile 2>>$errorlog
fi


