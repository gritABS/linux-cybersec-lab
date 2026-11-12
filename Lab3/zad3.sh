#!/bin/bash
kat_podany="$1"

if [ -d "$kat_podany" ]; then
	for katalogi in "$kat_podany"/*; do
		if [ -d "$katalogi" ]; then
			echo  "Podkatalog: $katalogi"
			licznik=0
			for plik in "$katalogi"/*; do
				if [ -f "$plik" ]; then
					licznik=$[licznik + 1]
				fi
			done
			echo "ilosc plikow to: $licznik"

		fi
	done
else
	echo "To nie katalog"
fi

