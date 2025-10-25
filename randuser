#!/bin/sh

# Small utility for getting randomized user data from randomuser.me through curl

use_raw_json=""
count=1
nationality="us"
print_name="all"

while getopts "c:n:N:" opt; do
    case "$opt" in
        c) count=$OPTARG ;;
        n) nationality=$OPTARG ;;
        N) case "$OPTARG" in
                first) ;;
                last) ;;
                all) ;;
                *) echo "Invalid parameter for option \"N\": \"$OPTARG\"" ; exit 1 ;;
            esac
            print_name=$OPTARG
            ;;
        \?) echo "Invalid option \"$opt\"" ; exit 1 ;;
    esac
done

curl -s "https://randomuser.me/api/?nat=$nationality&inc=name&results=$count" | jq -r '.results[] | "\(.name.first) \(.name.last)"'
