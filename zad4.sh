#1/bin/bash
plik="$1"
if [ -f "$1" ]; then
	cat "$1"
elif [ -d "$1" ]; then
	ls "$1"
else
	echo "Nie ma takiego pliku ani katalogu"
fi

