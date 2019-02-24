#! /bin/bash

file=$1
directors=$(cut -d '|' -f6 $file |tr ' ' '_' |sort -u)
for director in $directors;do
  name=$(echo $director |tr '_' ' ')
  movies=$(cut -d '|' -f1,6 $file |grep "$name" |cut -d'|' -f1)
  echo " Movies Directed by $name :"
  echo "$movies" |sed 's/^/ /g'
  echo "------------------------"
done
