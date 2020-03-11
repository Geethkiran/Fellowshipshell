#!/bin/bash -x

read -p "Enter the size of array to find triplets " size
for (( index=0; index<$size; index++ ))
do
	read -p "Enter the element into the array " value
	array[$index]=$value;
done
echo "givenArray: ${array[@]}"

for (( count1=0; count1<$size; count1++ ))
do
	for (( count2=$(($count1+1)); count2<$size; count2++ ))
	do
	for (( count3=$(($count2+1)); count3<$size; count3++ ))
	do
		if (( ${array[count1]}+${array[count2]}+${array[count3]}==0 ))
		then
				echo  "triplets:${array[count1]} ${array[count2]} ${array[count3]}"
		fi
	done
	done
done
