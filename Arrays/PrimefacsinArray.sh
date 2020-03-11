#!/bin/bash -x
read -p "enter a number to find its primefactors: " number
declare -a FactorsArray
count=0
for ((index=2;index*index<=$number;index++))
do
	while (($number%$index==0))
	do
		FactorsArray[$count]=$index
		((count++))
		number=$(($number/$index))
	done
	if (($number>2))
	then
		FactorsArray[$count]=$number
	fi
done
echo "${FactorsArray[@]}"
