#!/bin/bash -x
fulltime=1
parttime=2
maxhrsinmonth=50
emphrrate=20
noofwrkdays=20
totalemphr=0
totalworkdays=0
function getWorkHrs(){
$empcheck=$1
case $empcheck in
$fulltime)
emphr=8
;;
$parttime)
emphr=4
;;
*)
emphr=0
;;
esac
echo  $emphr
}

while [[ $totalemphr -lt $maxhrsinmonth && $totalworkdays -lt $noofwrkdays ]]
do
	(( totalworkdays++ ))
	empcheck=$(( RANDOM%3 ))
	emphrs="$( getWorkHrs $empcheck )"
	totalemphr=$(($totalemphr+$emphrs))
done

totalsalary=$(($totalemphr*$emphrrate))
