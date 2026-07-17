#!/bin/bash

# this script takes the package name from user

read -p "enter the package name: " package_name

sudo apt get update
sudo apt install $package_name -y
echo "updating system & installing $package_name"

#take servi name

read -p "enter the service name: " service_name


sudo systemctl start $service_name
sudo systemctl status $service_name
