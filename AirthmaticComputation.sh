#!/bin/bash -x

read -p "Enter value of a: " a1
read -p "Enter value of b: " b1
read -p "Enter value of c: " c1


result=$(( $a1 + $b1 * $c1 ))
echo $result1

read -p "Enter value of a: " a2
read -p "Enter value of b: " b2
read -p "Enter value of c: " c2


result=$(( $a2 * $b2 + $c2 ))
echo $result2

read -p "Enter value of a: " a3
read -p "Enter value of b: " b3
read -p "Enter value of c: " c3


result=$(( $c3 + $a3/$b3 ))
echo $result3

read -p "Enter value of a: " a4
read -p "Enter value of b: " b4
read -p "Enter value of c: " c4


result=$(( $a4%$b4 + $c4 ))
echo $result4

