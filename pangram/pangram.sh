#!/usr/bin/env bash

distinct_letters=$(echo "${1,,}" | grep -o "[a-z]" | sort -u | wc -l)

if (( distinct_letters==26 )); then
    echo true
else
    echo false
fi
