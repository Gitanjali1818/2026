#!/bin/bash

#Exit if not root

if [ "$EUID" -ne 0 ]
then
echo "Please run this script as a root"
exit 1
fi

packages=("nginx" "curl" "wget")
for package in "${packages[@]}"
do
	if dpkg -s $package &> /dev/null
	then
		echo "$package is already installed. skipping.."
	else
		echo "$package is not installed. Installing.."
		
		apt update -y
		apt install $package -y

		if [ $? -eq 0 ]
		then 
			echo "$package installed successfully"
		else
			echo "$package failed to installed"
		fi
	fi
done

	
	
	



