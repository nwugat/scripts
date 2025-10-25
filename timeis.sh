input=$@
timezone=$(timedatectl list-timezones | fzf --query="$input" --select-1 --exit-0)
test -z "$timezone" && echo "No timezone provided." && exit 0
result=$(env TZ=$timezone date)
echo "$result ($timezone)"
