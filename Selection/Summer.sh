#! /bin/bash -x

m=$1 
d=$2
if (( $m==3 && $d >=20 && $d <=31 || $m==6 && $d >0 && $d <=20 || $m==4 && $d>0 && $d<=30 || $m==5 && $d>0 && $d<31 ))
then
	echo "its true"
else
	echo "its false"
fi
