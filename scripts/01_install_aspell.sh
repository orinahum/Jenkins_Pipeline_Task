#!/bin/bash

# ---------------------------------------------------------------------
# This Script installs aspell based on Linux distributions.
# Packages: aspell
# Author: Ori Nahum
# Collaborator: Avishay Layani
# Reference: https://www.freecodecamp.org/news/spell-check-on-your-linux-terminal/
# ----------------------------------------------------------------------

# Check if aspell is installed by running 'aspell --version'
aspell --version > /dev/null

# Check the exit status of the previous command to determine if aspell is installed
if [[ $? != 0 ]]; then
    # Source the OS release information to determine the distribution
    . /etc/os-release

    # Install aspell based on the detected OS distribution
    if [[ $ID = "debian" || $ID = "ubuntu" ]]; then
        # For Debian-based systems (including Ubuntu)
        sudo apt-get update -y
        sudo apt-get -y install aspell
        echo "[+] aspell installed on Debian/Ubuntu"

    elif [[ $ID = "rocky" ]]; then
        # For Rocky Linux
        sudo dnf update -y
        sudo dnf --enablerepo=crb -y install aspell
        echo "[+] aspell installed on Rocky"

    elif [[ $ID = "alpine" ]]; then 
        # For Alpine Linux
        sudo apk --no-cache --update add aspell
        echo "[+] aspell installed on Alpine"

    else
        # Handle unsupported OS distributions
        printf "[!] Your OS %s is not compatible with this script. \n[!] This script is meant for Debian, Rocky, or Alpine systems ONLY\n" $ID
        exit 1
    fi
else
    echo "[+] aspell is already installed"
fi
