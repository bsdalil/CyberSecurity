#!bin/bash
touch Roulette_Dealers
awk -F" " '{print $1, $2, $5, $6}' $1_Dealer_schedule > Roulette_Dealers | grep $2.*$3 Roulette_Dealers
rm Roulette_Dealers

