#!/bin/bash

read -p "enter the file name:" FILE

if 
	[ -f "$check_number.sh" ];then
	echo "file exists"
else
	echo "file doesn't exists"
fi



