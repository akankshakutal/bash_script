#! /bin/bash

file=$1
largest=0
length=0
movie_names=$(cut -d '|' -f1 $file |tr ' ' '_' )

for movie_name in $movie_names;do
  length=${#movie_name}
  if [ $largest -lt $length ]
  then
    largest=$length
  fi
done
length=0
for movie_name in $movie_names;do
  length=${#movie_name}
  if [ $largest == $length ]
  then
    echo "$movie_name" | sed 's/_/ /g'
  fi
done

