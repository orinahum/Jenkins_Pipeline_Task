#!/bin/bash

# ---------------------------------------------------------------------
# This Script Install aspell base on Linux distributions
# Packages: aspell
# Author: Ori Nahum
# Collaborator : Avishay Layani
# https://www.freecodecamp.org/news/spell-check-on-your-linux-terminal/
# ----------------------------------------------------------------------

aspell --version > /dev/null
# check if aspell is install
if [[ $? != 0 ]];
then
    # checking if the OS is Debian, Rocky or Alpine and running installations accordingly
    . /etc/os-release

    if [[ $ID = "debian" || $ID = "ubuntu" ]]; then
        sudo apt-get update -y
        sudo apt-get -y install aspell

        echo "[+] aspell installed on Debian"

    elif [[ $ID = "rocky" ]]; then
        sudo dnf update -y
        sudo dnf --enablerepo=crb -y install aspell

        echo "[+] aspell installed on Rocky"

    elif [[ $ID = "alpine" ]]; then 
        sudo apk --no-cache --update add aspell

        echo "[+] aspell installed on Alpine"

    else
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is meant for Debian, Rocky or Alpine systems ONLY\n" $ID
        exit 1
    fi
else
    echo "[+] aspell already installed"
fi


