#!/bin/bash
i=$# #za zmienna i podstawiamy wszystkie wprowadzone parametry
while [ $i -gt 0 ]; do #parametry sa zliczane az beda wieksze od 0
	echo "${!i}" #wziecie wartosci liczbowej ze zmiennej i 
	i=$[i - 1]
done
