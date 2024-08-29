#!/usr/bin/env bash

read string
if [ $string = $(echo $string | rev) ]; then
	echo "Palindrom"
else
	echo "Not palindrom"
fi
