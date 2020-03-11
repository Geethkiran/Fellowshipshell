# /bin/bash -x
printf  "enter 1 for feet to inch conversion / enter 2 for inch to feet conversion / enter 3 for feet to meter conversion and finding area "
read number
if (($number==1))
then
	echo "enter the a value in feet"
	read  feetNum
	inch=$(echo "scale=2;$feetNum*12"|bc)
	echo "$feetNum feet=$inch inch"
elif (($number==2))
then
	echo "enter inch value"
	read inchNum
	feet=$(echo "scale=2;$inchNum/12"|bc)
	echo "$inchNum inch=$feet feet"
elif (($number==3))
then
	echo "length  and breadth in feet"
	read  l b
	area=$(echo "scale=2;($l*$b)*0.092903"|bc)
	echo "area in sqr meters=$area"
	areaAcres=$(echo "scale=2;($area*25)*0.000247105"|bc)
	echo "area of 25 plots: $areaAcres"
else
	echo "select correct option"
fi
