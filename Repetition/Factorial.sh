#! /bin/bash -x

echo "enter number to get its factorial"
read number
factorial=1

for (( i=1;i<=$number;i++ ))
do
	factorial=$(( $factorial*$i ))
done

echo "$number factorial = $factorial"
