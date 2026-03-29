#!/bin/bash
# Script 1: System Identity Report
# Author: Chinsha | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Chinsha Jangid"
SOFTWARE_CHOICE="Git"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
DATE=$(date)
UPTIME="Not available in this environment"

# --- Display ---
echo "===================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "===================================="
echo "Software : $SOFTWARE_CHOICE"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Date     : $DATE"
echo "Uptime   : $UPTIME"
echo ""
echo "This system is based on open-source software under GNU GPL license."
