#!/usr/bin/env bash

read -p "Input number: " number
if ! ((number % 2)); then
	echo "EVEN"
else
	echo "ODD"
fi
