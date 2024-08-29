#!/usr/bin/env bash

while IFS= read -r address; do
	ping -c 1 $address > /dev/null && echo "$address is available" || echo "$address is down" >&2
done < ips.txt 1>res.txt 2>err.txt
