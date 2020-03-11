#!/bin/bash -x

read -p "enter a number to get its harmonic: " num
harmonic=0
for (( i=1;i<=$num;i++ ))
do
    harmonic=$(echo "scale=2;1/$i+$harmonic"|bc)
done
echo "$harmonic"
