#!/bin/bash

for n in {1..9}
do
  echo "n: $n"
  x=$RANDOM
  echo "random: $x"
  if [ $x -le 20000 ]
  then
    echo "$x is < 20000 - continue"
  else
    echo "$x > 20000"
    echo "n=$n x=$x"
  fi
done
