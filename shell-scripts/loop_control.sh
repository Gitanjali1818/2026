#!/bin/bash

##break
for i in {1..10}
do
	[ $i -eq 5 ] && break
	echo "$i"
done

##continue
 for i in {1..5}
 do
	 [ $i -eq 5 ] && continue
	 echo "$i"
 done
