#!/bin/bash

. /etc/os-release

case $ID in
  ubuntu) echo "This is Ubuntu!"
        apt-get install g++ pkg-config libx11-dev libasound2-dev libudev-dev libxkbcommon-x11-0 libwayland-dev libxkbcommon-dev
    ;;

  arch) echo "This is Arch Linux!"
        pacman -S libx11 pkgconf alsa-lib pipewire-alsa
    ;;

  *) echo "This is an unknown distribution."
    ;;
esac