#! /bin/bash -x

random()
{
randomNumber=$(( $RANDOM%10 ))
echo "$randomNumber"
}
random
