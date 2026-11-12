#!/bin/bash
x=$1
until [ $x -gt  $2 ];
do
	echo "liczba $x jest mniejsza od $2"
	x=$[$x + 1];
done
