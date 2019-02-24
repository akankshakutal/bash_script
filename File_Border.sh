#! /bin/bash

File=$1
char="-"
No_of_lines=$(cat $File |wc -l)
no=$(./Longest_line.sh  $File)
printf "+"
for (( i=0; i<no+1; i++ )){
  printf "-"
}
printf "+"
printf "\n"
for (( i=1; i<=$No_of_lines; i++ )){
  line=$( head -$i $File  | tail -1 )
  count=${#line}
  echo "| $line\c"
  for (( j=$count; j<=$no-1; j++ )){
    printf " "
  }
  printf "|"
  printf "\n"
  
}
printf "+"
  for ((i=0; i<no+1; i++)){
  printf "-"
}
printf "+"
printf "\n"
