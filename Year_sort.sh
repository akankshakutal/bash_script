#! /bash/bin

movies_file=$1
years=$(cut -d '|' -f2 $movies_file |sort -u)
for year in $years;do
  movies=$(cut -d '|' -f1,2 $movies_file |grep $year|cut -d '|' -f1)
  echo "$year"
  echo "$movies"
  echo "----------"
done


