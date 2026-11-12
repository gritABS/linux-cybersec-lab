#!/bin/bash
odp="t"
echo -n "Podaj nazwe pliku do usuniecia "
read plik1
if [ -f "$plik1" ]; then
	rm -i "$plik1"
	echo -n "czy usuwac kolejne pliki? [t/n/] "
	read odp
	while [ $odp = "t" ]||[ $odp = "T" ]
	do
		ls
		echo -n "Jaki plik usunac? "
		read plik
		if [ -f $plik ]; then
			rm -i $plik
		else
			echo -n "$plik nie istnieje. "
		fi
		echo -n "Czy usuwac kolejne pliki? [t/n/] "
		read odp
	done

else
	echo "Plik $plik1 nie jest plikiem "
fi
