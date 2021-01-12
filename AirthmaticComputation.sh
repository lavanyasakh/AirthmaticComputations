#!/bin/bash -x

read -p "Enter value of a: " a1
read -p "Enter value of b: " b1
read -p "Enter value of c: " c1


result1=$(( $a1 + $b1 * $c1 ))
echo $result1

read -p "Enter value of a: " a2
read -p "Enter value of b: " b2
read -p "Enter value of c: " c2


result2=$(( $a2 * $b2 + $c2 ))
echo $result2

read -p "Enter value of a: " a3
read -p "Enter value of b: " b3
read -p "Enter value of c: " c3


result3=$(( $c3 + $a3/$b3 ))
echo $result3

read -p "Enter value of a: " a4
read -p "Enter value of b: " b4
read -p "Enter value of c: " c4


result4=$(( $a4%$b4 + $c4 ))
echo $result4

declare -A TotalList

TotalList[0]=$result1
TotalList[1]=$result2
TotalList[2]=$result3
TotalList[3]=$result4

echo ${TotalList[@]}

for ((i=0; i<=3; i++))
do
	Data[$i]=${TotalList[$i]}
done

echo ${Data[@]}

for (( i=0; i<=3; i++ ))
do
	for (( j=i+1; j<=3; j++ ))
	do
		if [ ${Data[$i]} -lt ${Data[$j]} ]
		then
			t=${Data[$i]}
			Data[$i]=${Data[$j]}	
			Data[$j]=$t
			echo ${Data[@]}
		fi
	done
done	
echo ${Data[@]}
