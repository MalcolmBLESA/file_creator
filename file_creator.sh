#!/bin/sh

i=0
while [ $i -le 10 ]
do
    touch test_${i}.txt
    i=$((i+1))
done
