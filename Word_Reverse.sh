#! /bin/bash

text=$@
for (( i=${#*}; i>0; i-- ))
do
  echo "${!i}" |tr '\n' ' '
done
printf "\n"


