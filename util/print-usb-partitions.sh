#!/usr/bin/env sh
# Self-explanatory
# Used mainly for reference

print_usb_partitions() {
  mnt_pts="$(lsblk -o NAME,TRAN | awk '$2=="usb" {print "/dev/" $1}')"
  test -n "$mnt_pts" && { lsblk -o MOUNTPOINT "$mnt_pts" | tail --lines=+3; }
}
