#!/bin/sh

if [ $# -ne 1 ]
then
    echo "Usage: $0 FILENAME" >&2
    exit 1
fi

filename=$1

i=0
while [ $i -le 10 ]
do
    touch ${filename}_${i}.txt
    i=$((i + 1))
done

