#!/usr/bin/env bash

printf '%s' "$*" |
  tr -dc '[:alnum:] ñÑáéíóúÁÉÍÓÚüÜ\n' |
  sed -E 's/[[:space:]]+$//' |
  tr -s '[:space:]' ' ' |
  tr '[:upper:]' '[:lower:]' |
  tr ' ' '-'

# echo "$*" \
#   | sed \
#     -e 's/^[[:blank:]]*//' \
#     -e 's/[[:blank:]]*$//' \
#     -e 's/\s/-/g' \
#     -e "s/'//g" \
#     -e 's/[–—―−]/-/g' \
#     -e 's/--*/-/g' \
#   | grep -oP '[\p{L}\p{N}\p{P}\p{Z}\p{M}]+' \
#   | tr '[:upper:]'  '[:lower:]' \
#   | tr -d '(){}[]' \
#   | tr -d '\n'
