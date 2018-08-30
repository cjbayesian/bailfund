#!/bin/bash
BIG_FROM=$1
BIG_TO=$2
CHUNK_SIZE=$3
YEAR=$4
BATCH_SCRIPT=$5
for i in $(seq $BIG_FROM $BIG_TO); do 
    from=$(($i * $CHUNK_SIZE))
    to=$(($from + $CHUNK_SIZE))
    from=$(($from + 1))
    #echo $from $to 2017
    $BATCH_SCRIPT $to $from $YEAR &
done
