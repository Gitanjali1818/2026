#!/bin/bash

read -p "enter the package name: " package_name

sudo apt get update
sudo apt install $package_name -y
echo "updating system and installing $package_name"

#take service name
read -p "enter the service name: " service_name

# ask y/n and directly use in if

read -p "check the service status? (y/n): " yn
if
	[ "$yn" = "y" ]; then 
	sudo systemctl start $service_name
	sudo systemctl status $service_name

else
	echo "skipped"
fi







