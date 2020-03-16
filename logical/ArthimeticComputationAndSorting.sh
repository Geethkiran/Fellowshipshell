#!/bin/bash -x

declare -A Operations
echo "enter the values of a b c"
read a b c

op1=$(echo "scale=2;$a+$b*$c"|bc)
op2=$(echo "scale=2;$a*$b+$c"|bc)
op3=$(echo "scale=2;$c+$a/$b"|bc)
op4=$(echo "scale=2;$a%$b+$c"|bc)

Operations["op1"]=$op1
Operations["op2"]=$op2
Operations["op3"]=$op3
Operations["op4"]=$op4

for ((i=1;i<=4;i++))
do
	opArray[$i-1]="${Operations["$p$i"]}"
done

echo "operation value array : ${opArray[@]}"
echo "Sort array in desending order"
printf '%s\n' "${opArray[@]}" |sort -r -n
echo "Sort array in asending order"
printf '%s\n' "${opArray[@]}" |sort -n 


