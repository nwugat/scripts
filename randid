#!/usr/bin/env bash

combinations() {
    n=$(( 27 * 2 + 10 )) # [A-Z][a-z][0-9], 64 different characters.
    r=$1
    result=$(echo "
		/* factorial */
		define f (x) {
			if (x <= 1) return (1);
			return (f(x-1) * x);
		}
		/* permutations */
		define c (n, r) {
			return (f(n)/f(n-r))
		}
		c($n, $r)
    " | bc)
    echo $result
}

length=8
charset='A-Za-z0-9'
repeat=1

while getopts "l:chLNr:" opt; do
    case $opt in
        l) length=$OPTARG ;;
        c) echo $(combinations $length) ; exit 0 ;;
        L) charset='A-Za-z' ;;
        N) charset='0-9' ;;
        r) repeat=$(seq $OPTARG) ;;
        h) echo "-h   // Help
-l # // Length
-c   // Calc combinations
-L   // Use only letters
-N   // Use only numbers" ; exit 0 ;;
        \?) echo "Invalid option" ; exit 1 ;;
    esac
done

for i in $repeat; do
  tr -dc "$charset" < /dev/random | head -c"$length" | xargs echo
done
