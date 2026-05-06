#!/usr/bin/env sh

mnt_pts="$(lsblk -o NAME,TRAN | awk '$2=="usb" {print "/dev/" $1}')"
test -n "$mnt_pts" && { xargs lsblk -o MOUNTPOINT | tail --lines=+3; }
