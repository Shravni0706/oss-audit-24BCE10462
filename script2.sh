#!/bin/bash
# Script 2: VLC Package Inspector
# Author: Shravni Harihar | Course: Open Source Software

PACKAGE="vlc"

if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    vlc) echo "VLC: open-source player that supports almost every media format" ;;
    firefox) echo "Firefox: open-source browser for an open web" ;;
    git) echo "Git: distributed version control built for collaboration" ;;
    python3) echo "Python: community-driven programming language" ;;
esac

