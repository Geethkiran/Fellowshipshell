#! /bin/bash -x

empWagePerHour=20
fullTime=1
partTime=2
randomCheck=$(( RANDOM%3 ))
if [ $randomCheck -eq $fullTime ]
then
    noOfHoursWorked=8
elif [ $randomCheck -eq $partTime ]
then
	noOfHoursWorked=4
else
	noOfHoursWorked=0
fi
salary=$(( $empWagePerHour * $noOfHoursWorked ))
echo "$salary"
