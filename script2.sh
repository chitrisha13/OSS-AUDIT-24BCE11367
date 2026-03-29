#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Chinsha Jangid

PACKAGE="git"

echo "============================"
echo "FOSS Package Inspector"
echo "============================"

# check if package is installed
if command -v $PACKAGE >/dev/null 2>&1; then
	echo "$PACKAGE is installed"

	#Get Version
	VERSION=$($PACKAGE --version)
	echo "Version: $VERSION"
else
	echo "$PACKAGE is NOT installed"
fi
	echo""

#case statement for description
case $PACKAGE in
    git)
        echo "Git: a distributed version control system that supports open collaboration."
        ;;
    vlc)
        echo "VLC: a free and open-source multimedia player."
        ;;
    firefox)
        echo "Firefox: an open-source browser promoting privacy and openness."
        ;;
    python)
        echo "Python: a powerful open-source programming language."
        ;;
    *)
        echo "Unknown package."
        ;;
esac

