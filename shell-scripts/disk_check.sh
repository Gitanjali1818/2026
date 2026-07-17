#!/bin/bash

check_disk () {
	echo "=======DISK USAGE======"
	df -h /
}

check_memory () {
	echo "====CHECK MEMORY====="
	free -h
}

## main section 
check_disk
echo
check_memory
