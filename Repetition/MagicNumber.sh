#!/bin/bash -x
first=1
last=100
while (( $first < $last ))
do
	mid=$((($first+$last)/2))
echo $mid
	echo "your guessing number is $mid :--- " $mid
	read -p "if $mid is your guessing number enter 1 else 0 :--- " isGuessing
	if [ $isGuessing == 0 ]
	then
		read -p "if $mid is higher than your guessing number enter 1 else 0 :--- " isChange
		if [ $isChange == 1 ]
		then
			first=$mid+1
		else
			last=$mid-1
		fi
	else
		echo " your guessing number is :-- $mid  "
		break;
	fi
done
