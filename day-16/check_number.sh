#!/bin/bash

read -p "enter a number:" NUM

if
	[ $NUM -gt 0 ]; then
	echo "positive number"
elif
       	[ $NUM -lt 0 ];then
	echo "negative number"
else
	echo "zero"
fi

              
