#!/bin/bash

fun1(){
	echo "Uruchomiono fun1()"
	read d
}
fun2(){
	echo "Uruchomiono fun2()"
	read d
}
fun3(){
	echo "Uruchomiono fun3()"
	read d
}
fun4(){
	echo "Uruchomiono fun4()"
	read d
}
ODP=1

until [ $ODP = 5 ];do
clear
echo "-----MENU-----"
echo "A. Pierwsza funkcja"
echo "2. Druga funkcja"
echo "3. Trzecia funkcja"
echo "4. Czwarta funkcja"
echo "5. Wyjscie"
read ODP 


case $ODP in
	"A"|"a")fun1;;
	2)fun2;;
	3)fun3;;
	4)fun4;;
	5)echo "Koniec aplikacji.."
		exit;;
	*) echo "Zla opcja!"
		read d;;
esac
done
