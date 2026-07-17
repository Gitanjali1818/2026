#!/bin/bash

set -euo pipefail

LOG_FILE="/var/log/maintance.log"

log_message() {
	echo "$(date '+%Y-%m-%d %H:%M:%S') : $1" >> "$LOG_FILE"
}

log_message "maintance_started"

#create log dir if it doent exist
sudo mkdir -p /var/log/myapp

#log rotation

if ./log_rotate.sh /var/log/myapp >> "$LOG_FILE" 2>&1; then
	log_message "log rotation complete"
else
	log_message "log rotation failed"
fi

#backup

if ./backup.sh /home/ubuntu/devops /home/ubuntu/backups >> "$LOG_FILE" 2>&1; then
	log_message "backup complete"
else
	log_message "backup failed"
fi
	log_message "maintance finished"



	
