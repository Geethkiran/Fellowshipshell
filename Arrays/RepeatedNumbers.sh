#!/bin/bash -x

for (( index=0; index<=100; index++ ))
do
	array[$index]=$index;
done
for (( count=10; count<=100; count++ ))
do
	sum=0
	remainder=0
	temp=$((${array[count]}))
	while (( ${array[count]}>0 ))
	do
	remainder=$((${array[count]}%10))
	sum=$(($sum*10+$remainder))
	array[count]=$((${array[count]}/10))
	done
	if (( $temp==$sum ))
	then
		newArray[index++]=$(($sum))
	fi
done
echo "${newArray[@]}"
