#! /bin/bash -x

echo "three numbers"
read num1 num2 num3
op1=$(( $num1+$num2*$num3 ))
op2=$(( $num3+ $(( $num1/$num2 )) ))
op3=$(( $(( $num1%$num2 )) +$num3 ))
op4=$(( $(( $num1*$num2 ))+ $num3 ))

echo "$op1 $op2 $op3 $op4"
