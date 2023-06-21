#!/usr/bin/env bash

output=""

for ((i = "${#1}"; i >= 0; i--)); do
    output+="${1:i:1}"
done

echo "$output"
