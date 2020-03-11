#!/bin/bash 

read -p  "enter the value to get its prime factors: " number
while (( $number%2==0 ))
do
	echo -e "2 \c"
	number=$(( $number/2 ))
done

for (( i=3;i*i<$number;i=$(($i+2)) ))
do
	while (( $number%$i==0 ))
	do
		echo -e "$i \c"
		number=$(($number/2))
	done
done

if (( $number>2 ))
then
	echo "$number"
fi
