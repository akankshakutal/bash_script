#! /bin/bash

file=$1
ratings=$(cut -d '|' -f10 $file |sort -u)
for rating in $ratings;do
  movies=$(cut -d '|' -f1,10 $file | grep "$rating" | cut -d '|' -f1)
  echo "Movies in the $rating Rating are :"
  echo "$movies"
  echo "---------------------"
done

