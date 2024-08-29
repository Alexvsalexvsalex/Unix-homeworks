#!/usr/bin/env bash

OUT_FILE="rnd.txt" # can be $1 if we want argument from command line
FILE_LENGTH=$RANDOM # range is [0; 32767] bytes
echo "File length is $FILE_LENGTH"
dd if=/dev/urandom of=$OUT_FILE bs=$FILE_LENGTH count=1 && echo "Generated successfully"
