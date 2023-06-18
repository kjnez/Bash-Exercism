#!/usr/bin/env bash

alphabet=({a..z})

declare -A cipher		# Associative array

for ((i = 0, j = "${#alphabet[@]}" - 1; i < "${#alphabet[@]}"; i++, j--)); do
    cipher[${alphabet[i]}]="${alphabet[j]}"
done

main () {
    local trimmed="${2//[^[:alnum:]]/}" # Remove all non-alnum chars
    local lowercase="${trimmed,,}"	# Lowercase all chars
    local length="${#lowercase}"
    local output=""

    for ((i = 0; i < length; i++)); do
	local char="${lowercase:i:1}"
	[[ -n ${cipher[$char]} ]] && output+="${cipher[$char]}" || output+="$char"

	if [[ $1 == "encode" ]]; then
	    ((i < length - 1)) && ((i % 5 == 4)) && output+=' '
	fi
    done
    echo "$output"
}

main "$@"
