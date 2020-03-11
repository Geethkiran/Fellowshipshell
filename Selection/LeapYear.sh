#! /bin/bash -x

echo "enter a 4 digit year"
read year
if (($year%4==0&&$year%100 != 0||$year%400==0))
then
	echo "$year is a leapyear"
else
	echo "$year is not a leapyear"
fi
