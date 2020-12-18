#!/bin/bash

declare -A CompResult
read -p "Enter First Input :- " a
read -p "Enter Second Input :- " b
read -p "Enter Third Input :- " c

echo "---------------- INPUTS ----------------------"
echo "First Input Number is :- $a"
echo "Second Input Number is :- $b"
echo "Third Input Number is :- $c"

echo "*********** 1] Compute a + b * c ****************"
sum1=$(( $a+$b*$c ))
echo "Sum is:- $sum1"


echo "*********** 2] Compute a * b + c ****************"
sum2=$(($a*$b+$c))
echo "Sum is:- $sum2"

echo "*********** 3] Compute c + a / b ****************"
sum3=$(($c+$a/$b))
echo "Sum is:- $sum3"

echo "*********** 4] Compute a % b + c ****************"
sum4=$(($a%$b+$c))
echo "Sum is:- $sum4"

#---------Store the computation in a Dictionary------------------------------------
CompResult[1]="$sum1"
CompResult[2]="$sum2"
CompResult[3]="$sum3"
CompResult[4]="$sum4"

