#!/bin/bash

origin_ifs=IFS
IFS=$'\n'

declare -a newfolders

while read -r fname || [ -n "$fname" ]; do
    newfolders+=($fname)
done < foldernames.txt

len=${#newfolders[*]}
echo ${newfolders[*]}

for (( i=0; i<${len}; i++ )); do
    if [[ ${#newfolders[$i]} -gt 14 ]]; then
        continue
    else
        echo "Folder ${newfolders[$i]} has been created"
    fi
done

IFS=orig_ifs
exit 0