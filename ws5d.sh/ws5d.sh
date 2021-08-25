#!/bin/bash

declare -a hrswrk
hrswrk=(10 6 9 8 11 13 10 12 14 10 7 6 8)
prate=8
pay=0
len=${#hrswrk[*]}
i=0

until [[ $i -gt $len ]] || [[ $pay -gt 100 ]]; do
    pay=$((${hrswrk[$i]}*$prate))
        if ! [[ $pay -gt 100 ]]; then
            echo "Pay $i is \$$pay" >> record.txt 
        else
            echo "Pay $i is \$$pay [error: pay exceeds limit for this employee]" >> record.txt
        fi
    ((i++))
done

if [[ $i -lt $len ]]; then
    cat record.txt
    exit 1
fi

exit 0