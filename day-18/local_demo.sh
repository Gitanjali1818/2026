#!/bin/bash

##using local variable
##without local variable

show_local () {
	local message="Inside function"
	echo "$message"
}

show_global () {
       text="Global variable"	
       echo "$text"
}

show_local 

echo "outside function"
echo "${message:-variable not accesible}"


echo

show_global

echo "Outside functions"
echo "$text"
