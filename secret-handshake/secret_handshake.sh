#!/usr/bin/env bash

codes=('wink' 'double blink' 'close your eyes' 'jump')

main () {
    (($# == 1)) || exit 1
    local -a output
    for ((i = 0; i < "${#codes[@]}"; i++)); do
	if ((1 << i & "$1")); then
	    ((1 << 4 & "$1")) && output=("${codes[i]}" "${output[@]}") || output+=("${codes[i]}")
	fi
    done
    local IFS=,; echo "${output[*]}"
}

main "$@"
