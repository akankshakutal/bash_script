#! /bin/bash

n=$1
add=0
for(( i=1;i<n;i++ )){
  add=$[$add+$i]
}
echo "$add"
