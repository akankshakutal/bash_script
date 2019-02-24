#! /bin/bash

File=$1
large=0
No_of_lines=$(cat $File | wc -l)
for (( i=1; i<=$No_of_lines; i++ )){
  line=$( head -$i $File  | tail -1 )
  count=${#line}
  if [ $large -lt $count ]
  then
    large=$count
  fi
}
echo "$large"

