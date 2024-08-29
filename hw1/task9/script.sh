#!/usr/bin/env bash

cal | grep -o -E "(_\x08.)+"
# cal | (read line; printf "$line, "; grep -o -E "(_\x08.)+") # Месяц год, число
