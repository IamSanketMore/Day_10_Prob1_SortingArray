#!/bin/bash

read -p "Enter First Input :- " a
read -p "Enter Second Input :- " b
read -p "Enter Third Input :- " c

sum1=0
sum2=0
sum3=0
sum4=0
echo "---------------- INPUTS ----------------------"
echo "First Input Number is :- $a"
echo "Second Input Number is :- $b"
echo "Third Input Number is :- $c"

echo "*********** Compute a + b * c ****************"
sum1=$(( $a+$b*$c ))
echo "Sum is:- $sum1"


echo "*********** Compute a * b + c ****************"
sum2=$(($a*$b+$c))
echo "Sum is:- $sum2"

echo "*********** Compute c + a / b ****************"
sum3=$(($c+$a/$b))
echo "Sum is:- $sum3"

echo "*********** Compute a % b + c ****************"
sum4=$(($a%$b+$c))
echo "Sum is:- $sum4"

