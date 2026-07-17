#!/bin/bash

square() {
	echo $(($1 * $1))

}

result=$( square 5)

echo "Square = $result"

exit 0
