#! /bin/bash

file=$1
movie_names=$(cut -d '|' -f1 $file |sort |tr ' ' '_' )
for alphabate in {A..Z};do

  movies=$( cut -d '|' -f1 $file | grep "^$alphabate"  )
  echo "Movie Names start with $alphabate are :"
  echo "$movies"
  echo "---------------------"
done
