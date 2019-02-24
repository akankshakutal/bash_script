#! /bin/bash

Text=$@
Hyphen=$(./Replace.sh $Text)
echo "$Text"
echo "$Hyphen"


