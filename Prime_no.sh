#! /bin/bash

no=$1
if(( $no==1 ))
then 
  echo "Nither Prime nor Composite "
else
  flag=0
  for (( i=2; i<$no; i++)){
    if(( $no%$i == 0 ))
    then
      flag=1
    fi
  }
  if(( $flag == 1 )) 
  then
    echo "Non Prime"
  else
    echo "Prime"
  fi
fi
