#!/usr/bin/env bash

modifier () {
    tmp=$(($1 - 10))
    if ((tmp % 2 != 0 && tmp < 0)); then
	tmp=$((tmp - 1))
    fi
    echo $((tmp / 2))
}

roll () {
    echo $(( RANDOM % 16 + 3 ))
}

generate () {
    constitution="$(roll)"
    echo "strength $(roll)"
    echo "dexterity $(roll)"
    echo "constitution $constitution"
    echo "intelligence $(roll)"
    echo "wisdom $(roll)"
    echo "charisma $(roll)"
    echo "hitpoints $((10 + $(modifier "$constitution")))"
}

case "$1" in
    modifier)
	modifier "$2";;
    generate)
	generate;;
esac
