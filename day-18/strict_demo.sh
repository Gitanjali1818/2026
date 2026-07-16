#!/bin/bash

set -euo pipefail

NAME="Gitanjali"

echo "Testing set -u"
echo "$NAME"

echo "Testing set -e"
rm -rf test
mkdir test
echo "created dir successfully"

false

echo
echo "Testing pipefails"
cat file.txt | grep "abc"
echo "This line will not execute"
