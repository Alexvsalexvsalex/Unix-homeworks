#!/usr/bin/env bash

find . -type f -mmin -2880 -not -iname "*.sh" | 
	while IFS= read -r file; do
		dir=$(dirname $file)
		name=$(basename $file)
		mv "$file" "$dir/_$name"
		echo "$file renamed"
	done
