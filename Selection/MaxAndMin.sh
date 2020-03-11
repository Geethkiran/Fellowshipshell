#! /bin/bash -x
max=0
min=32768
i=0;
while (( i<5 ))
do
	num=$(( RANDOM%1000  ))
	num2=$num
if [ $num -gt $max ]
then
	max=$num
fi
if [ $num2 -lt $min ]
then
	min=$num2
fi
	(( i++ ))
done
echo "$max $min"
