#!/bin/bash

declare -A dictCoin
heads=1
tails=0
head_count=0
tail_count=0
head_tie=0
tail_tie=0
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
		echo "Its a tie"
		tieresolved
		break
	fi

done
if (( $head_count > $tail_count ))
then
	echo "Head Wins $head_count times first!!"
elif (( $tail_count > $head_count ))
then
	echo "Tails Wins by $tail_count times first!!"
fi
function tieresolved()
{
while [ $head_count -ne 3 ] && [ $tail_count -ne 3 ]
do
	flip=$(( RANDOM % 2 ))
	if [[ $flip -eq $heads ]]
	then
		echo "Head Wins"
		head_tie=$(( $head_tie + 1 ))
	elif [[ $flip -eq $tails ]]
	then
		echo "Tail Wins"
		tail_tie=$(( $tail_tie + 1 ))
	fi
done

	echo " "
	if (( $head_tie > $tail_tie ))
	then
		echo "After Tie, Head won by $head_ties times"
	elif (( $tail_tie > $head_tie ))
	then
		echo "After Tie, Tail won by $tail_tie times"
	fi
}
