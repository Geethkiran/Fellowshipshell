#!/bin/bash -x

read -p "enter range: " range
for (( num=1;num<=$range;num++ ))
do
if (( $num==1||$num==2 ))
then
	continue
else
	count=0
fi
for (( i=1;i<$num;i++ ))
	do
	if (( $num%$i==0 ))
	then
	(( count++ ))
	fi
	done

	if (( $count==1 ))
	then
		echo -e "$num \c"
	else
		continue
	fi
done
