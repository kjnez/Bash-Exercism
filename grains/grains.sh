#!/usr/bin/env bash

if [[ $1 == total ]]; then
    printf "%u" $((2**64 - 1))
elif [[ $1 -gt 0 && $1 -le 64 ]]; then
    printf "%u" $((2**($1 - 1)))
else
    echo "Error: invalid input"
    exit 1
fi
