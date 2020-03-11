#!/bin/bash -x

highest=0
secondhighest=0
smallest=1000
secondsmallest=1000
declare -a Numarray
for ((i=0;i<=9;i++))
do
	Numarray[i]=$((RANDOM%1000))
if ((${Numarray[i]}>$highest))
then
	secondhighest=$highest;
	highest=${Numarray[i]}
elif ((${Numarray[i]}>$secondhighest))
then
	secondhighest=${Numarray[i]}
fi
if ((${Numarray[i]}<$smallest))
then
	secondsmallest=$smallest
	smallest=${Numarray[i]}
elif (( ((${Numarray[i]}<$secondsmallest))&&((${Numarray[i]}!=$smallest)) ))
then
	secondsmallest=${Numarray[i]}
fi
done
echo "given Array : ${Numarray[@]}"
echo "second highest : $secondhighest"
echo "second smallest : $secondsmallest"
