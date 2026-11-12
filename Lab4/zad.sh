#!/bin/bash
odp="t"
#if [ -f $plik1 ]; then

	echo -n "czy usuwac pliki? [t/n/] "
	read odp
	while [ $odp = "t" ]||[ $odp = "T" ]
	do
		ls 
		echo -n "Jaki plik usunac?"
		read plik
		if [ -f $plik ]; then
			rm -i $plik
		else
			echo -n "$plik nie istnieje."
		fi
		#echo -n "Czy usuwac kolejne pliki? [t/n/]"
		#read odp
	done
#fi

