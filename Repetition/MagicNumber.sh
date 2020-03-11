#!/bin/bash -x
echo "choose a number between 1 to 100"
read number
first=1
last=100
while (($first<=$last))
do
	sum=$(($first+$last))
	middle=$(($sum/2))

	if (($number==$middle))
	then
		echo "the number u choose is $middle"
	break
	elif (($number>$middle))
	then
		first=$(($middle+1))
	else (($number<$middle))
		last=$(($middle-1))
	fi
done

if (($first>$last))
then
	echo "The number u choose is not in the range"
fi
