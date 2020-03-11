#!/bin/bash -x
number=1
power=$1
index=0

while (($index<=$power))
do
	echo "2^$index--->$number"
	number=$(($number*2))
	((index++))

if (($number>256))
then
    break
fi
done
