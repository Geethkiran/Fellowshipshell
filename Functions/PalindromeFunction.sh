
#! /bin/bash -x

echo "enter a number  to check its a palandrome or not"
read number
reverse=0
isPalindrome(){ 
		temp=$1
		while (($temp>0))
		do
      	reverse=$(($reverse*10+$temp%10))
			temp=$(($temp/10))
		done
		if (($reverse==$number))
		then
			echo "$number is a palindrome"
		else
			echo "$number is not a palindrome"
		fi
}
isPalindrome $number
