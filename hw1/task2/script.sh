#!/usr/bin/env bash

IN_FILE="digits.txt" # can be $1 if we want argument from command line
cut -d ' ' -f3 $IN_FILE | paste -s -d + - | bc
