#!/usr/bin/env bash

die () {
    echo "$1"
    exit 1
}

(($# != 2)) && die "Darts needs exactly two arguments."

for arg; do
    [[ $arg = *[^[:digit:].-]* ]] && die "Invalid arguments: Non-numerical characters."
done

bc <<< "scale=4
        x=$1; y=$2; distance=sqrt(x^2 + y^2)
	if (distance <= 1) 10 else if (distance <=5) 5 else if (distance <= 10) 1 else 0"
