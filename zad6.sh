#!/bin/bash
if [ -z "$1" ]; then
	echo "Podaj wartosc ciagu"
	exit 1
fi
n=1
a=1
b=1
p=$1
p=$[p - 2] #liczba obiegow
while [ $p -gt 0 ]; do
	n=$[a + b]
	a=$b
	b=$n
	p=$[p - 1]
done

echo "$n"

