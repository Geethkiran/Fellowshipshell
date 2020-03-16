#!/bin/bash

read -p "Enter the Number of simulations : " simulations
declare -A Singlet
declare -A Doublet
declare -A Triplet

getFlipKey(){

if (( $1 == 1 ))
then
	result="H"
else
	result="T"
fi
echo $result

}

storeResults(){

for (( counter=0;counter<simulations;counter++ ))
do
	flipCoin1=$(getFlipKey $((RANDOM%2)))
	Singlet[$flipCoin1]=$(("${Singlet[$flipCoin1]}"+1))

	flipCoin2=$(getFlipKey $((RANDOM%2)))
   Doublet[$flipCoin1$flipCoin2]=$(("${Doublet[$flipCoin1$flipCoin2]}"+1))

	flipCoin3=$(getFlipKey $((RANDOM%2)))
   Triplet[$flipCoin1$flipCoin2$flipCoin3]=$(("${Triplet[$flipCoin1$flipCoin2$flipCoin3]}"+1))
done

}

getPercentages(){

for key in "${!Singlet[@]}"
do
	percent1=$(awk -v x="${Singlet[$key]}" -v y=$simulations -v z=100 'BEGIN {print (x/y*z)}')
	echo $key ---- $percent1
done
echo ------------------------------

for key in "${!Doublet[@]}"
do
   percent2=$(awk -v x="${Doublet[$key]}" -v y=$simulations -v z=100 'BEGIN {print (x/y*z)}')
	echo $key ---- $percent2
done
echo ------------------------------

for key in "${!Triplet[@]}";
do
   percent3=$(awk -v x="${Triplet[$key]}" -v y=$simulations -v z=100 'BEGIN {print (x/y*z)}')
	echo $key ---- $percent3
done

}

storeResults
getPercentages
