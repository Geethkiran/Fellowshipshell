#!/bin/bash -x

counthead=0
counttail=0
while (($counthead<=11||$counttail<=11))
do
	if ((RANDOM%10>5))
	then
		((counthead++))

	if (($counthead==11))
	then
		echo "head wins"
	break
	fi
	else
		((counttail++))

	if (($counttail==11))
	then
		echo "tail wins"
	break
	fi
	fi
done
