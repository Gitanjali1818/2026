#!/bin/bash

set -e

mkdir /tmp/devops-test || echo "Directory already exists"

cd /tmp/devops-test || {
	echo "Failed to navigate to directory"
exit 1
}

touch demo.txt || {
	echo "failed to create file"
exit 1
}

echo "File created successfully"
      
