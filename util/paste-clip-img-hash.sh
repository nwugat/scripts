#!/usr/bin/env sh

wl-paste > "$(wl-paste | sha256sum | head -c 16).png"
