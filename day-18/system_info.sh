#!/bin/bash

set -euo pipefail

#hostname and OS Info

system_info () {
	echo "======SYSTEM INFO====="
	echo "hostname : $(hostname)"
	echo "OS : $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d )"
}

#uptime

show_uptime() {
	echo 
	echo "====UPTIME===="
	uptime -p
}

#Disk usage

disk_usage() {
	echo 
	echo "=====TOP 5 FILE SYSTEM USAGE===="
	df -h | head -n 6
}

##Memory usage

memory_usage() {
	echo 
	echo "=====MEMORY USAGE====="
	free -h
}

##cpu_processes() {
 	echo
	echo "=====CPU PROCESSES====="
	ps aux --sort=%cpu | head



##Top 5 CPU system processes

main () {
	system_info
	show_uptime
	disk_usage
	memory_usage


}
main 





