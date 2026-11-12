#!/bin/bash
if [ $# == 0 ]; then
	echo "Skrypt nalezy wywolac: $0 nazwa_pliku"
elif [ ! -f $1 ]; then
	date>$1
	echo "Utworzono plik $1"
	exit
else
	for i in $@
	do
		if [ -r $i ]; then
			w=`cat $i|wc -l`
			echo "W pliku $i jest $w linia/linii"
		else
			echo "Plik $i nie ma praw do odczytu"
		fi
	done
fi
