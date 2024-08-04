#!/bin/bash

# -----------------------------------------------------------------------------------------------------------------
# This Script Install packages base on Linux distributions
# Packages: python3, python3-pip, py3-pip, poetry
# Author: Ori Nahum
# Collaborator : Avishay Layani

# -----------------------------------------------------------------------------------------------------------------

# poetry --version > /dev/null

# #check if poetry is install
# if [[ $? != 0 ]];
# then
     # checking if the OS is Debian, Rocky or Alpine and running installations accordingly
    . /etc/os-release

    if [[ $ID = "debian" || $ID = 'ubuntu' ]]; then
        sudo apt update
        sudo upgrade
        sudo apt install -y python3-poetry python3-pytest python3-dev python3-pytest-html
        echo "[+] poetry installed on Debian"

    elif [[ $ID = "rocky" ]]; then
        sudo dnf update -y
        sudo dnf install -y python3-poetry python3-pytest python3-dev python3-pytest-html
        echo "[+] poetry installed on Rocky"

    elif [[ $ID = "alpine" ]]; then 
        sudo apk --no-cache --update add py3-poetry py3-pytest py3-dev py3-pytest-html
        echo "[+] poetry installed on Alpine"

    else
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is meant for Debian, Rocky or Alpine systems ONLY\n" $ID
        exit 1
    fi
# else
#     echo "[+] poetry already installed"
# fi