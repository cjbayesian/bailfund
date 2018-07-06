#!/bin/bash

for i in $(seq -f "%07g" $1 $2); do 
    echo "$i-$3"
    curl -k https://ujsportal.pacourts.us/DocketSheets/CPReport.ashx?docketNumber=MC-51-CR-$i-$3 > "dockets/$i-$3.pdf" 
done

#for i in $(seq -f "%07g" 10 15); do curl -k https://ujsportal.pacourts.us/DocketSheets/CPReport.ashx?docketNumber=MC-51-CR-$i-$YEAR > "$i-$YEAR.pdf"; done

