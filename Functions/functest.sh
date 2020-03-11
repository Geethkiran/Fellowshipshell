#! /bin/bash -x
myfunc(){
echo  $1
}
result="$( myfunc $((RANDOM%2)) )"
if [ $result -eq 1 ]
then
echo "success"
else
echo "failure"
fi
