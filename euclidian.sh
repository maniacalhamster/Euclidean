#!/bin/bash

function euclidean() {
	a=$1
	b=$2
	result="A\tB\tR\n"
	while [ $b -ne 0 ]
	do
			r=$(($a%$b))
			result=$result"$a \t$b \t$r \n"
			a=$b
			b=$r
	done
	printf "$result";
}

function main {
	read -p "A val: " a
	read -p "B val: " b

	euclidean $a $b
}

euclidean $1 $2
