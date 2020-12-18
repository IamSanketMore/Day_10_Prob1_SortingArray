#!/bin/bash

declare -A CompResult
read -p "Enter First Input :- " a
read -p "Enter Second Input :- " b
read -p "Enter Third Input :- " c

#echo "---------------- INPUTS ----------------------"
#echo "First Input Number is :- $a"
#echo "Second Input Number is :- $b"
#echo "Third Input Number is :- $c"

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

echo ${CompResult[@]}

#-------------Store the Dictionary in array---------------------------------------
for i in ${!CompResult[@]}
do
	array[$i]=${CompResult[$i]}
done

#--------------Print the array -------------------------------------
for i in ${!array[@]}
do
	echo $i] Computation $i Result is:- ${array[$i]}
done

#------------------Sort the Result Of Computation in Descending order-----------------------------------------

for (( i = 1; i<=4; i++ ))
do
	for (( j = 1; j<=4; j++ ))
	do
		if [ ${array[$j]} -lt ${array[$i]} ]
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "------------------Sort the Result Of Computation in Descending order---------------------------------"
echo ${array[@]}


#------------------Sort the Result Of Computation in Ascending order-----------------------------------------

for (( i = 1; i<=4; i++ ))
do
        for (( j = 1; j<=4; j++ ))
        do
                if [ ${array[$j]} -gt ${array[$i]} ]
                then
                        temp=${array[$i]}
                        array[$i]=${array[$j]}
                        array[$j]=$temp
                fi
        done
done
echo "------------------Sort the Result Of Computation in Ascending order---------------------------------"
echo ${array[@]}
