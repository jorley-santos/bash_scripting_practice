#!/bin/bash

logfile=job_results.log
errorlog=job_error.log

/usr/bin/echo "The script ran at the following time: $(/usr/bin/date)" >> $logfile 2>> errorlog
