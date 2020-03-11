#!/bin/bash -x

declare -a Numarray
	for ((i=0;i<=9;i++))
	do
		Numarray[i]=$((RANDOM%1000))
	done

	for ((j=0;j<8;j++))
	do

	for ((k=$(($j+1));k<9;k++))
	do

	if ((${Numarray[j]}>${Numarray[k]}))
	then
		temp=${Numarray[j]}
		Numarray[j]=${Numarray[k]}
		Numarray[k]=$temp
	fi

	done

	done

	echo "given array: ${Numarray[@]}"
	echo "secondhighest: ${Numarray[-2]}"
	echo "secondsmallest: ${Numarray[1]}"
