#!/bin/bash
silnia() {
# cialo funkcji; $1 jest argumentem funkcji
if [ $1 == 0 ]; then
echo 1
else 
echo $[ $1 * `silnia $[$1 -1]`] #wywolanie rekurencyjne
fi
}
# wywolanie funkcji; tu $1 jest argumentem skryptu
silnia $1
