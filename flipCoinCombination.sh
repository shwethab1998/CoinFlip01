#!/bin/bash

declare -A dictCoin
read -p "Enter Number of Tosses:" toss
heads=1
tails=0
head_count=0
tail_count=0
for (( i=0; i<=toss; i++ ))
do
	flip=$(( RANDOM % 2 ))
	if [[ $flip -eq $heads ]]
	then
		head_count=$(( $head_count + 1 ))
	elif [[ $flip -eq $tails ]]
	then
		tail_count=$(( $tail_count + 1 ))
	else
		exit
	fi

done
if (( $head_count > $tail_count ))
then
	echo "Head Wins by $head_count Flips"
else
	echo "Tails Wins by $tail_count Flips"
fi
