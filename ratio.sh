#!/usr/bin/env bash

# Greatest Common Divisor
calc_gcd() {
  echo "define gcd(a,b){if (b==0) return a; return gcd(b, a%b)}; gcd($1,$2)" | bc;
}

a=$1 ; b=$2

gdc=$(calc_gcd $a $b)

# Calculate result
echo "$((a/gdc)):$((b/gdc))"
