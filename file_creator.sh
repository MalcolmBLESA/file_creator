#!/bin/sh
filename=$1
start=$2
stop=$3

if [ $# -ne 3 ]
then
    echo "Usage: $0 FILENAME START STOP" >&2 
    exit 1
fi

if [ $stop -le $start ]
then
    echo "START number must be greater than STOP number"
fi

i=0
while [ $start -le $stop ]
do
    touch ${filename}_${i}.txt
    start=$((start + 1))
done

