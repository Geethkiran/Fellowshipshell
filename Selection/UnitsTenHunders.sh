#! /bin/bash 

echo "enter number"
read num
echo "units tens hunders "
while (( $num>0 ))
do
	r=$(( $num%10 ))
	num=$(( $num/10 ))
	echo -e "$r \c"
done
