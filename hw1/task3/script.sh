#!/usr/bin/env bash

find . -mmin +30 -mmin -1440 -iname "*.txt" | wc -l
