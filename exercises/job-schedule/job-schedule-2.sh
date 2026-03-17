#!/bin/bash

logfile=job_results.log
errorlog=job_error.log

echo "This script ran at the following time: $(date)" >>$logfile 2>>$errorlog

at 15:48 -f ./job-schedule-2.sh >>$logfile 2>>$errorlog

