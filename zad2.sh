#!/bin/bash
plik=$1
if [ -e "$plik" ]; then
	echo "Plik \"$plik\" istnieje"
else
	echo "To jest nowy \"$plik\"" > "$plik"
	echo "Tworze plik o nazwie \"$plik\""
fi
