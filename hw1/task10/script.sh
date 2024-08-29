#!/usr/bin/env bash

awk -F';' 'NR>1 {
	NAME = $2;
	ANGLE = $4;
	sub(/\./, ",", ANGLE); # Во входных данных дробные числа используют точку, а в Российской Федерации любят запятую
	COLOR = $5;
	if (COUNT[COLOR] % 2 == 1) {
		printf "%s %.4f\n", NAME, sin(ANGLE)/cos(ANGLE);
	}
	COUNT[COLOR]++;
}' $1
