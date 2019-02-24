#! /bin/bash

var="1 2 3 4 5"
fact=1
for var1 in $var;do
  fact=$[$fact*$var1]
  echo "$fact"
done
