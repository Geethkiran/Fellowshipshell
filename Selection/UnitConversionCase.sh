# /bin/bash -x

printf  "enter 1 for feet to inch conversion / enter 2 for feet to meters conversion / enter 3 for inch to feet conversion /press 4 for meter to feet"
read number
case $number in
1)
	echo "enter the a value in feet"
	read  feetNum
	inch=$(echo "scale=2;$feetNum*12"|bc)
	echo "$feetNum feet=$inch inch"
;;
2)
	echo "enter the value in feet"
	read feetNum
	meter=$(echo "scale=2;$feetNum*0.3048"|bc)
	echo "$feetNum feet=$meter meters"
;;
3)
	echo "enter inch value"
	read inchNum
	feet=$(echo "scale=2;$inchNum/12"|bc)
	echo "$inchNum inch=$feet foot"
;;
4)
	echo "enter meter value"
	read meter
	feet=$(echo "scale=2;$meter/0.3048"|bc)
	echo "$meter meters=$feet foot"
;;
*)
	echo "invalid option"
esac
