#!/bin/bash

if [ $# -eq 0 ]
    then
    echo "Please provide a log file."
    exit 1
fi

LOG_FILE=$1

if [ ! -f $LOG_FILE ]; then
	echo "file does not exist."
	exit 1
fi


echo "========CRITICAL EVENTS========"
grep -nc "CRITICAL" "$LOG_FILE"


