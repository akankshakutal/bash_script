#! /bin/bash

no=$1
copy=$no
len=${#no}
total=0
while [ $no -gt 0 ]
do
  rem=$(($no%10))
  result=1
  for(( i=len; i>0; i--));do
    result=$[$result*$rem]
  done
  total=$[$total+$result]
  no=$(($no/10))
done
if(( $total==$copy ))
then 
  echo "Armstrong Number"
else 
  echo "Non Armstrong Number"
fi



