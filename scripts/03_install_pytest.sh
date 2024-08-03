#!/bin/bash

# -----------------------------------------------------------------------------------------------------------------
# This Script Install packages base on Linux distributions
# Packages: pytest, python3-pip, python3-pytest
# Author: Ori Nahum
# Collaborator : Avishay Layani
# https://pkgs.org/download/pytest
# https://pkgs.org/search/?q=pytest
# -----------------------------------------------------------------------------------------------------------------

pytest --version > /dev/null
#check if pytest is install
if [[ $? != 0 ]];
then
     # checking if the OS is Debian, Rocky or Alpine and running installations accordingly
    . /etc/os-release

    if [[ $ID = "debian" || $ID = 'ubuntu' ]]; then
        sudo apt-get update -y
        sudo apt-get install -y python3-pytest
        echo "[+] pytest installed on Debian"

    elif [[ $ID = "rocky" ]]; then
        sudo dnf update -y
        sudo dnf install -y  python3-pip
        pip3 install pytest
        echo "[+] pytest installed on Rocky"

    elif [[ $ID = "alpine" ]]; then 
        sudo apk --no-cache --update add py3-pip
        pip3 install pytest
        echo "[+] pytest installed on Alpine"

    else
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is meant for Debian, Rocky or Alpine systems ONLY\n" $ID
        exit 1
    fi
else
    echo "[+] pytest already installed"
fi