#!/bin/bash
plik=$1
if [ -e "$plik" ]; then
	echo "Plik istnieje"
else
	echo "plik nie istnieje"
fi

