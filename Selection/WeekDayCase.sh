#! /bin/bash -x

echo "enter number"
read num
case $num in
0)
	echo "sunday"
;;
1)
	echo "Monday"
;;
2)
	echo "tuesday"
;;
3)
	echo "wednesday"
;;
4)
	echo "thursday"
;;
5)
	echo "friday"
;;
6)
	echo "saturday"
;;
*)
	echo "enter a number between 0 to 6"
esac

