#!/bin/sh

filename=$1
start=$2
stop=$3
extention=$4

if [ $# -ne 4 ]
then
    echo "Usage: $0 FILENAME START STOP EXTENTION" >&2 
    exit 1
fi

if [ $stop -le $start ]
then
    echo "START number must be greater than STOP number"
fi

i=0
while [ $start -le $stop ]
do
    touch ${filename}_${i}.${extention}
    start=$((start + 1))
done

