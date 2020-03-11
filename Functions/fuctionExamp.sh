#! /bin/bash -x
function myfunction() 
{
return $1
}
myfunction $(( RANDOM%2 ))
result=$?
if [ $result -eq 1 ]
then
echo "sucess"
else
echo "failure"
fi
