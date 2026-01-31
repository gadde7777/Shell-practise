#!/bin/bash

NUM1=100
NUM2=SHIVAKUMAR
SUM=$(($NUM1+$NUM2))

echo "SUM IS : $SUM"

FRUITS=("APPLE" "BANANA" "POMO")

echo "FRUITS ARE : ${FRUITS[@]}"
echo "FRUITS ARE : ${FRUITS[0]}"
echo "FRUITS ARE : ${FRUITS[1]}"
echo "FRUITS ARE : ${FRUITS[2]}"
