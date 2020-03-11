#! /bin/bash -x
echo "enter a number"
read inputNumber
reverse=0
flag=0
isPrime() {
        number=$1
	for (( i=2;i<$(($number/2));i++ ))
	do
	if (( $number%$i==0 ))
	then
		flag=1;
	fi
	done
	return $flag

}
getPalindrome(){
         tempNum=$1
	 while (($tempNum>0))
	 do
		reverse=$(( $reverse*10+$(($tempNum%10)) ))
		tempNum=$(($tempNum/10))
    done
	 if (( $reverse==$inputNumber ))
	 then
		return $reverse
	 fi
}
isPrime $inputNumber
result=$?;
if (( $result==0 ))
then
	getPalindrome $inputNumber
	palindrome=$?
	isPrime $palindrome
	palindromeRes=$?
if (( $palindromeRes==0 ))
then
	echo "palindrome is prime number"
else
	echo "palindrome is not prime number"
fi
else
	echo "Input number is not a prime number"
fi
