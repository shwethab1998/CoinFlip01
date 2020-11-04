#!/bin/bash

declare -A dictCoin
heads=1
tails=0
head_count=0
tail_count=0
while [ $head_count -ne 21 ] && [ $tail_count -ne 21 ]
do
	flip=$(( RANDOM % 2 ))
	if [[ $flip -eq $heads ]]
	then
		echo "Head Wins"
		head_count=$(( $head_count + 1 ))
	elif [[ $flip -eq $tails ]]
	then
		echo "Tail Wins"
		tail_count=$(( $tail_count + 1 ))
	else
		exit
	fi

done
if (( $head_count > $tail_count ))
then
	echo "Head Wins $head_count times first!!"
elif (( $tail_count > $head_count ))
then
	echo "Tails Wins by $tail_count times first!!"
else
	echo "It's a Tie...."
fi
