#!/usr/bin/env sh
# Write the image in the clipboard to a file, set its file name to a hash.

wl-paste > "$(wl-paste | sha256sum | head -c 16).png"
