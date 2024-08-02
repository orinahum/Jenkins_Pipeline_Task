#!/bin/bash

# -----------------------------------------------------------------------------------------------------------------
# This Scrips Install packages base on Linux distributions
# Packages: python3-pip, codespell, shellcheck, epel-release
# Autor: Ori Nahum
# Collaborator : Avishay Layani
# https://linuxcommandlibrary.com/man/codespell
# https://www.cyberciti.biz/programming/improve-your-bashsh-shell-script-with-shellcheck-lint-script-analysis-tool/
# -----------------------------------------------------------------------------------------------------------------

shellcheck --version > /dev/null
#check if shellcheck is install
if [[ $? != 0 ]];
then
    # checking if the OS is Debian, Rocky or Alpine and running installations accordingly
    . /etc/os-release

    if [[ $ID = "debian" ]]; then
        sudo apt update -y
        sudo apt install -y shellcheck
        echo "[+] shellcheck installed on Debian"

    elif [[ $ID = "rocky" ]]; then
        sudo dnf update -y
        sudo dnf -y install epel-release shellcheck
        echo "[+] shellcheck installed on Rocky"

    elif [[ $ID = "alpine" ]]; then 
        sudo apk --no-cache --update add shellcheck
        echo "[+] shellcheck installed on Alpine"

    else
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID
        exit 1
    fi
else 
    echo "[+] shellcheck already installed"
fi

codespell --version > /dev/null
#check if codespell is install
if [[ $? != 0 ]];
then
    pip3 install codespell
else
    echo "[+] codespell already installed"
fi



