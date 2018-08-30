#!/bin/bash

for i in $(seq -f "%07g" $1 $2); do 
    echo "$i-$3"
    curl -k https://ujsportal.pacourts.us/DocketSheets/CourtSummaryReport.ashx?docketNumber=MC-51-CR-$i-$3 > "summaries/$i-$3.pdf"
done

