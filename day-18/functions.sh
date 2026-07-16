#!/bin/bash

## functions to greed user
## functions to add two numbers
## function call

greed () {
	echo "hello, $1"
}
	add () {
     		sum=($1+$2)
		echo "sum = $sum"
}
	greed Geet
	add 10 20
