#!/usr/bin/env bash
read -rp "Principal amount: " principal
read -rp "Annual interest rate (%): " rate
read -rp "Time in years: " years
awk -v p="$principal" -v r="$rate" -v t="$years" 'BEGIN { printf "Simple interest: %.2f\n", p * r * t / 100 }'
