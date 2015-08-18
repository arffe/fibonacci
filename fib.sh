#!/bin/bash
num1=0
num2=0
COUNTER=0
until [ $COUNTER -gt $1 ]; do
	if [ $COUNTER -eq 1 ]; then
		let fib=1
	else
		let fib=num1+num2
	fi
		let num1=num2
		let num2=fib
		let COUNTER=COUNTER+1
done
echo "fib("$1")" = $fib
