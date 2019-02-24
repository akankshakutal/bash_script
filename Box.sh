#! /bin/bash

text=$@
hyphen=$(./Replace.sh $text)
echo "+$hyphen+"
echo "|$text|"
echo "+$hyphen+"
