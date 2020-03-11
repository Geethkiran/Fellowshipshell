
#! /bin/bash -x

read -p "enter a number: " num
count=0
for (( i=2;i<$num/2;i++ ))
do
if (( $num%$i==0 ))
then
	(( count++ ))
fi
done
if (( $count>=1 ))
then
	echo "number is  not a prime "
else
	echo "number is prime"
fi
