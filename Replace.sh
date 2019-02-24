#! /bin/bash

text=$@
echo "$text" | sed s/./-/g

