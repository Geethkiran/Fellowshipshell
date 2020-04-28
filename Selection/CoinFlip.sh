#! /bin/bash -x
if (( RANDOM%10 > 5 ))
then
	echo "Its Heads"
else
	echo "Its Tails"
fi
