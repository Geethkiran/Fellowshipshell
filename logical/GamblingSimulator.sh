#!/bin/bash

#constants

INITIAL_STAKE=100
NUM_OF_DAYS=30
WIN=1
LOSS=0

#variables

lossStake=$(( $INITIAL_STAKE/2 ))
maxWin=$(( $lossStake+$INITIAL_STAKE ))
maxLoss=$(( $INITIAL_STAKE-$lossStake ))
totalMoneywinOrLoss=0
daysWin=0
daysLoss=0

declare -A monthChart

function dailyBetting()
{
   dayStake=$INITIAL_STAKE
   while [ $dayStake -lt $maxWin ] && [ $dayStake -gt $maxLoss ]
   do
     gamble=$((RANDOM%2))
     if [ $gamble -eq 1 ]
     then
        ((dayStake++))
     else
        ((dayStake--))
     fi
   done
}

function monthBetting(){
   for (( day=1; day<=$NUM_OF_DAYS; day++ ))
   do
   dailyBetting
      if [ $dayStake -eq $maxLoss ]
      then
         totalMoneywinOrLoss=$(( $totalMoneywinOrLoss - $lossStake ))
         monthChart["Day $day"]=$totalMoneywinOrLoss
         ((daysLoss++))
      else
         totalMoneywinOrLoss=$(( $totalMoneywinOrLoss + $lossStake ))
         monthChart["Day $day"]=$totalMoneywinOrLoss
         ((daysWin++))
      fi
   done
   echo "Total Won/loss : $totalMoneywinOrLoss"
   echo "No. of days Win $daysWin by $(($daysWin*$lossStake))"
   echo "No. of days Loss $daysLoss by  $(($daysLoss*$lossStake))"
   echo "${!monthChart[@]} : ${monthChart[@]}"

   luckyDay=$( printf "%s\n" ${monthChart[@]} | sort -nr | head -1 )
   unluckyDay=$( printf "%s\n" ${monthChart[@]} | sort -nr | tail -1 )

   for data in "${!monthChart[@]}"
   do
      if [[ ${monthChart[$data]} -eq $luckyDay ]]
      then
         echo "LUCKIEST DAY- $data $luckyDay"
      elif [[ ${monthChart[$data]} -eq $unluckyDay ]]
      then
         echo "UNLUCKIEST DAY- $data $unluckyDay"
      fi
   done
}

#main

	monthBetting
   if (($totalMoneywinOrLoss<=0))
   then
      echo "you can't play for next month"
   else
      echo "you won $totalMoneywinOrLoss, continue playing"
   fi
