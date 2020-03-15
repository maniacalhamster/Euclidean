#!/bin/bash

r1=$1
r2=$2
	
p1=0
p2=1
q1=1
q2=0
k=-2

result="k\tr\ta\tp\tq\n"
result=$result"$k\t$r1\t-\t$p1\t$q1\n"
k=$(($k+1))
result=$result"$k\t$r2\t-\t$p2\t$q2\n"

while [ $r2 -ne 0 ]
do
	k=$(($k+1))
	a=$(($r1/$r2))

	temp=$r2
	r2=$(($r1%$r2))
	r1=$temp

	temp=$p2
	p2=$(($a*$p2+$p1))
	p1=$temp

	temp=$q2
	q2=$(($a*$q2+$q1))
	q1=$temp
	result=$result"$k\t$r2\t$a\t$p2\t$q2\n"
done
printf "$result"
