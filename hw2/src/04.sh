#!/usr/bin/env sh

regex_blacklist=`cat $1 | awk '$0="^(.*\\\.)?"$0"$"'` # поддомены выглядят как (любые символы)точка(указанный домен)

URL_REGEX="^([0-9A-Za-z]*):\/\/(([0-9A-Za-z]+)(:([0-9A-Za-z]*))?@)?([0-9A-Za-z\.]*)(:([0-9]+))?(\/.*)$"

while IFS= read -r address; do
	if [[ $address =~ $URL_REGEX ]]; then
		host="${BASH_REMATCH[6]}"
		need_to_block=false
		for blocked in $regex_blacklist; do
			[[ $host =~ $blocked ]] && need_to_block=true
		done
		if $need_to_block; then
			echo "$address DENY"
		else
			echo "$address ALLOW"
		fi
	else
		echo "$address INCORRECT"
	fi
done
