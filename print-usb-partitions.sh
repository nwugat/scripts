#!/usr/bin/env sh

lsblk -o NAME,TRAN | awk '$2=="usb" {print "/dev/" $1}' | xargs lsblk -o MOUNTPOINT | tail --lines=+3
