#! /bin/bash -x

echo "enter number"
read num
if (( $num==0 ))
then
	echo "sunday"
elif (( $num==1 ))
then
	echo "Monday"
elif (( $num==2 ))
then
	echo "tuesday"
elif (( $num ==3 ))
then
	echo "wednesday"
elif (( $num ==4 ))
then
	echo "thursday"
elif (( $num ==5 ))
then
	echo "friday"
elif (( $num ==6 ))
then
	echo "saturday"
else
	echo "enter a number between 0 to 6"
fi
