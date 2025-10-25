#!/usr/bin/env bash

count=1
nat="us"

while getopts "c:n:" opt; do
    case "$opt" in
        c) count=$OPTARG ;;
        n) nat=$OPTARG ;;
        \?) echo "Invalid option"; exit 1 ;;
    esac
done

curl -s "https://randomuser.me/api/?nat=$nat&inc=name&results=$count" | jq -r '.results[] | "\(.name.first) \(.name.last)"'
