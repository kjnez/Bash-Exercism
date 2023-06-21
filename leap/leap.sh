#!/usr/bin/env bash

if [[ "$#" -ne 1 ]] || ! [[ $1 =~ ^[[:digit:]]+$ ]]; then
    echo "Usage: leap.sh <year>"
    exit 1
fi

((!($1 %4) && $1 %100 || !($1 %400))) && echo "true" || echo "false"
