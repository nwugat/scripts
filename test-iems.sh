#!/bin/sh

sox -m \
  "|sox -n -p synth sine 440 vol 1" \
  "|sox -n -p synth sine 220 vol 1" \
  "|sox -n -p synth whitenoise vol 0.5" \
  -d
