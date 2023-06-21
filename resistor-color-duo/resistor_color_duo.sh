#!/usr/bin/env bash

declare -A encoding=(["black"]=0 ["brown"]=1 ["red"]=2 ["orange"]=3 ["yellow"]=4
		    ["green"]=5 ["blue"]=6 ["violet"]=7 ["grey"]=8 ["white"]=9)

if [[ -n ${encoding[$1]} && -n ${encoding[$2]} ]]; then
    echo $((${encoding[$1]} * 10 + ${encoding[$2]}))
else
    echo "invalid color"
    return 1
fi
