#! /bin/bash -x
echo "enter a number"
read number
case $number in
 0)
	echo "zero"
;;
 1)
	echo "one"
;;
 2)
	echo "two"
;;
 3)
	echo "three"
;;
 4)
	echo "four"
;;
 5)
	echo "five"
;;
 6)
	echo "six"
;;
 7)
	echo "seven"
;;
 8)
	echo "eight"
;;
 9)
	echo "nine"
;;
 *)
	echo "enter a single digit number"
esac
