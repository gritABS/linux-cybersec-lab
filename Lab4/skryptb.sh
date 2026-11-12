#!/bin/bash
odp="n"
while [ $odp = "n" ]||[ $odp = "N" ]
do
	echo -n "Podaj nazwe katalogu: "
	read KAT
	if [ -d $KAT ]; then
		w=`ls -l $KAT| grep ^-|wc -l`
                echo "W katalogu $KAT jest $w plikow"
        else
                echo -n "$KAT nie istnieje. Czy utworzy katalog? [t/n/] "
                read ODP1
                if [ $ODP1 = "T" ]||[ $ODP1 = "t" ]; then
			mkdir $KAT
                        echo "Utowrzono katalog $KAT"
                        ls -l |grep ^d
                fi
        fi
echo -n "Zakonczyc?  [t/n/] "
read odp
done

