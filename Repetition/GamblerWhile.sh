#!/bin/bash -x

stake=100
goal=200
wins=0
bets=0
while (($stake>0&&$stake<=$goal))
do
	((bets++))

	if ((RANDOM%10>5))
	then
		((stake++))
		((wins++))
	else
		((stake--))
	fi
done
	echo "bets: $bets"
	echo "wins: $wins"
