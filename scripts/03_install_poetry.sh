#!/bin/bash

# -----------------------------------------------------------------------------------------------------------------
# This Script Install packages base on Linux distributions
# Packages: python3, python3-pip, py3-pip, poetry
# Author: Ori Nahum
# Collaborator : Avishay Layani
# https://docs.pytest.org/en/stable/reference/plugin_list.html
# https://pytest-html.readthedocs.io/en/latest/installing.html
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
        sudo apt install -y python3-poetry python3-pytest python3-dev
        echo "[+] poetry installed on Debian"

    elif [[ $ID = "rocky" ]]; then
        sudo dnf update -y
        sudo dnf install -y python3-poetry python3-pytest python3-dev
        echo "[+] poetry installed on Rocky"

    elif [[ $ID = "alpine" ]]; then 
        sudo apk --no-cache --update add py3-poetry py3-pytest py3-dev
        echo "[+] poetry installed on Alpine"

    else
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is meant for Debian, Rocky or Alpine systems ONLY\n" $ID
        exit 1
    fi

    curl -O https://files.pythonhosted.org/packages/source/p/pytest-html/pytest-html-3.2.0.tar.gz /tmp/
    tar -xzf /tmp/pytest-html-3.2.0.tar.gz
    pip install . /tmp/pytest-html-3.2.0
    pip install pytest-html

# else
#     echo "[+] poetry already installed"
# fi