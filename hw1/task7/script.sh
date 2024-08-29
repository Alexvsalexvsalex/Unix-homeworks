#!/usr/bin/env bash

IN_FILE=$1
OUT_FILE=$2

while IFS= read -r number; do
	printf "$number:"
	if [[ "$number" -gt 1 ]]; then
		cur=2
		while [[ "$number" -gt 1 ]]; do
			if ! ((number % cur)); then
				number=$((number / cur))
				printf " $cur"
			else
				cur=$((cur + 1))
			fi
		done
	else
		printf " $number"
	fi
	echo ""
done < $IN_FILE > $OUT_FILE

