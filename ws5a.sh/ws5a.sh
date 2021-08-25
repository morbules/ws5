#!/bin/bash

orig_ifs=IFS 
IFS=$'\n'
for line in $(cat data1.txt); do 
    if [[ $line =~ ^[0-9]+% ]]; then
        echo "$line" 
    else
            continue
    fi
done
IFS=origin_ifs
exit 0