#!/bin/bash
BIG_FROM=$1
BIG_TO=$2
CHUNK_SIZE=$3
YEAR=$4
for i in $(seq $BIG_FROM $BIG_TO); do 
    from=$(($i * $CHUNK_SIZE))
    to=$(($from + $CHUNK_SIZE))
    from=$(($from + 1))
    #echo $from $to 2017
    ./batches.sh $to $from $YEAR &
done
