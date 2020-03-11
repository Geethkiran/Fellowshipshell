
#!/bin/bash -x

declare -A birthMonths;
NUMBER_OF_PEOPLE=50;
for (( i=1; i<=NUMBER_OF_PEOPLE; i++ ))
do
	birthMonth=$((RANDOM%12+1));
	birthMonths[$birthMonth]=$(( ${birthMonths[$birthMonth]}+1 ));
done
	echo "BirthMonth Number of People "
for (( i=1; i<=12; i++ ))
do
	echo " $i ---> ${birthMonths[$i]}"
done
