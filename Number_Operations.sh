#! /bin/bash

File=$0
no=$1
for(( i=1; i<=no; i++)){
  square=$[$i*$i]
  cube=$[$i*$i*$i]
  if(( $i==1 ))
  then 
    value="Not Prime and Composite "
  else
    flag=0
    for (( j=2; j<$i; j++)){
      if(( i%j == 0 ))
      then
        flag=1
      fi
    }
    if(( $flag == 1 )) 
    then
      value="Non Prime               "
    else
      value="Prime                   "
    fi
  fi
  if(( i%2==0 ))
  then
    Even_odd="Even"
  else
    Even_odd="Odd "
  fi
  fact=1
  for(( k=1; k<=$i; k++)){
    fact=$[$fact*$k]
  }
  printf "| $i\t|\t$square\t|\t$cube\t| $value | $Even_odd |%25s|\n" "$fact">>new
}
No_of_char=$(sh Longest_line.sh new)
for(( i=$No_of_char+21; i>=0; i--)){
  printf "-"
}
printf "\n"
printf "| No\t|\tsquare\t|\tcube\t|      Prime/Composite     |  E/O |\t%10s Factorial|\n"
for(( i=$No_of_char+21; i>=0; i--)){
  printf "-"
}
printf "\n"
cat new
for (( i=$No_of_char+21; i>=0; i-- )){
  printf "-"
}
printf "\n"
rm new
