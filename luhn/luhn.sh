#!/usr/bin/env bash

main () {
    [[ $1 =~ ^[[:digit:]]{2,}$ ]] || return 1
    declare -i sum=0 digit
    for (( i = 1; i <= ${#1}; i++ )); do
	digit=${1:$((-i)):1}
	(( i % 2 == 0 )) && (( digit *= 2 )) && (( digit > 9 )) && (( digit -= 9 ))
	(( sum += digit ))
    done
    (( sum % 10 == 0))
}

main "${*// /}" && echo true || echo false
