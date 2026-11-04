#!/bin/bash
x=1;
while [ $x -le 10 ]; do
echo "Napis pojawil sie po raz: $x" 
x=$[x + 1]
done
x=1;
until [ $x -ge 10 ]; do
echo "Napis pojawil sie po raz: $x"
x=$[x + 1]
done
