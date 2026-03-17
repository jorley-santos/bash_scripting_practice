#!/bin/bash

logfile=job_results.log
errorlog=job_error.log

echo "The script ran at the following time: $(date)" >> $logfile 2>> errorlog
