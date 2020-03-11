#! /bin/bash -x

read -p " enter a number: " num
case $num in
1)
	echo "units"
;;
10)
	echo "tens"
;;
100)
	echo "hundred"
;;
1000)
	echo "thousand"
;;
*)
	echo "enter either 1,10,100,1000"
esac
