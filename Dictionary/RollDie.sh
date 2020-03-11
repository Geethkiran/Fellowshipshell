#!/bin/bash -x
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
function random_Generate(){
	echo $1
}
counter=0
while (( count1<10 && count2<10 && count3<10 && count4<10 && count5<10 && count6<10 ))
do
	random="$(random_Generate $((RANDOM%6+1)) )"
case $random in
  1)
  ((count1++))
  CountArray[0]=$count1 ;;
  2)
  ((count2++))
  CountArray[1]=$count2 ;;
  3)
  ((count3++))
  CountArray[2]=$count3 ;;
  4)
  ((count4++))
  CountArray[3]=$count4 ;;
  5)
  ((count5++))
  CountArray[4]=$count5 ;;
  *)
  ((count6++))
  CountArray[5]=$count6 ;;
esac
	RandomArray[counter]=$random
	((counter++))
done
	echo ${RandomArray[@]}
	minCount=10
	minNum=0
for (( count=0;count<6;count++ ))
do
if (( CountArray[count] < $minCount ))
then
	minCount=$((CountArray[count]))
	minNum=$count
fi
done
	maxCount=0
	maxNum=0
for (( count=0;count<6;count++ ))
do
if (( CountArray[count] > $maxCount ))
then
  maxCount=$((CountArray[count]))
	maxNum=$count
fi
done
	echo "Minimum number of Times of Random die Number Generated is : " $(($minNum+1)) and count is $minCount
	echo "Maximum number of Times of Random die Number Generated is : " $(($maxNum+1)) and count is $maxCount
