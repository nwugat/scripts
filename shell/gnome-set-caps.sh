#!/usr/bin/env sh

opt=""

case $1 in
  "swap") opt="swapescape" ;;
  "escape") opt="escape" ;;
  "none") opt="none" ;;
  "reset") gsettings reset org.gnome.desktop.input-sources xkb-options ; exit 0 ;;
  *) exit 1 ;;

gsettings set org.gnome.desktop.input-sources xkb-options "['caps:"$opt"']"
