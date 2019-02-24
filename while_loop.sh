#! /bin/bash

n=$1
add=0
i=1
while(( $i <= $n ))
do
  add=$[$add+$i]
  i=$((i+1))
done
echo "Additon = $add"
