#! /bin/bash -x

num1=$((RANDOM%100))
num2=$((RANDOM%100))
num3=$((RANDOM%100))
num4=$((RANDOM%100))
num5=$((RANDOM%100))
sum=$(($num1+$num2+$num3+$num4+$num5))
avg=$(echo "scale =2;$sum/5" |bc)
echo "sum: $sum"
echo "avg: $avg"
