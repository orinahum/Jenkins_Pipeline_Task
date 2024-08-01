#!/bin/bash

# ---------------------------------------------------------------------
# This Scrips Install aspell base on Linux distributions
# Autor: Ori Nahum
# Collaborator : Avishay Layani
# https://www.freecodecamp.org/news/spell-check-on-your-linux-terminal/
# ----------------------------------------------------------------------

aspell --version

# check if aspell is install
if [[ $? != 0 ]];
then
    # checking if the OS is Debian, Rocky or Alpine and running installations accordingly
    . /etc/os-release

    if [[ $ID = "debian" ]]; then
        sudo apt-get update -y
        sudo apt-get -y install aspell
        echo --------------------------------
        echo "[+] aspell installed on Debian"
        echo --------------------------------

    elif [[ $ID = "rocky" ]]; then
        sudo dnf update -y
        sudo dnf --enablerepo=crb -y install aspell
        echo --------------------------------
        echo "[+] aspell installed on Rocky"
        echo --------------------------------

    elif [[ $ID = "alpine" ]]; then 
        sudo apk --no-cache --update add aspell
        echo --------------------------------
        echo "[+] aspell installed on Alpine"
        echo --------------------------------

    else
        echo -------------------------------------------------------
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID
        echo -------------------------------------------------------
        exit 1
    fi
else
    echo "[+] aspell already installed"
fi


