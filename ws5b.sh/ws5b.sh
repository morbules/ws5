#!/bin/bash

while true; do
    read -p 'Enter a three digit code that begins with 5: ' usrcde
    if [[ $usrcde =~ ^5[0-9]{2} ]] && [[ ${#usrcde} = 3 ]]; then
        break
    else
    echo "Invalid code entered - please try again"
    fi
done

echo "Code entered is valid - thankyou"

exit 0