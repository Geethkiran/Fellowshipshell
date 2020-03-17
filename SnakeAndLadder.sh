#!/bin/bash -x

echo "---------Welcome to SnakeLadder Game----------"

GAME_WINNING_POSITION=100
player_1_Position=0
player_2_Position=0
player_1_turns=0
player_2_turns=0

ladder(){ playerPosition=$1
case $playerPosition in
19)
playerPosition=66
;;
32)
playerPosition=53
;;
67)
playerPosition=100
;;
73)
playerPosition=93
;;
esac
return "$playerPosition"
}

snake(){

playerPosition=$1
case $playerPosition in
34)
playerPosition=9
;;
52)
playerPosition=20
;;
74)
playerPosition=28
;;
esac
return "$playerPosition"
}

noPlay(){ playerPosition=$1

	if (( $playerPosition>100 ))
		then
		playerPosition=$(($playerPosition-$playerrolldice))
	fi
	return $playerPosition
}
playCheck(){
	playerrolldice=$1
	playerPosition=$2
		playerPosition=$(($playerPosition+$playerrolldice))
		noPlay $playerPosition
		playerPosition=$?
		ladder $playerPosition
		playerPosition=$?
		snake $playerPosition
		playerPosition=$?
		return "$playerPosition"
}

while [ $player_1_Position -lt $GAME_WINNING_POSITION ] && [ $player_2_Position -lt $GAME_WINNING_POSITION ]
do
	player_1_rolldice=$(($((RANDOM%6))+1))
	playCheck $player_1_rolldice $player_1_Position
	player_1_Position=$?

	player_2_rolldice=$(($((RANDOM%6))+1))
	playCheck $player_2_rolldice $player_2_Position
	player_2_Position=$?

	((player_1_turns++))
	((player_2_turns++))
done

if [ $player_1_Position -eq $GAME_WINNING_POSITION ]
	then
		echo "Playerone is Won and num of turns is $player_1_turns"
else
		echo "Playertwo is Won and num of turns is $player_2_turns"
fi
