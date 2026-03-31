#!/bin/bash
# Script 1: System Identity Report
# Author: Shravni Harihar | Course: Open Source Software

STUDENT_NAME="Shravni Harihar"
SOFTWARE_CHOICE="VLC"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "===================================="
echo " Open Source Audit - $STUDENT_NAME"
echo "===================================="
echo "Software       : $SOFTWARE_CHOICE"
echo "Distribution   : $DISTRO"
echo "Kernel         : $KERNEL"
echo "User           : $USER_NAME"
echo "Home Directory : $HOME_DIR"
echo "Uptime         : $UPTIME"
echo "Date & Time    : $DATE"
echo "License        : Linux Kernel uses GPL License"

