#! /bin/bash -x

read -p "enter a number to print powers of 2 till the number: " power
num=1
for (( i=0;i<=$power;i++ ))
do
	echo "2^$i--->$num"
	num=$(( $num*2 ))
done
