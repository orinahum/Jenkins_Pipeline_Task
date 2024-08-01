#!/bin/bash

# -----------------------------------------------------------------------------------------------------------------
# This Scrips Install packages base on Linux distributions
# Packages: python3-pip, codespell, shellcheck, epel-release
# Autor: Ori Nahum
# Collaborator : Avishay Layani
# https://linuxcommandlibrary.com/man/codespell
# https://www.cyberciti.biz/programming/improve-your-bashsh-shell-script-with-shellcheck-lint-script-analysis-tool/
# -----------------------------------------------------------------------------------------------------------------

# checking if the OS is Debian, Rocky or Alpine and running installations accordingly
. /etc/os-release

if [[ $ID = "debian" ]]; then
    sudo apt update -y
    sudo apt install -y python3-pip shellcheck
    pip3 install codespell
    echo ------------------------------------------------
    echo "[+] codespell & shellcheck installed on Debian"
    echo ------------------------------------------------

elif [[ $ID = "rocky" ]]; then
    sudo dnf update -y
    sudo dnf -y install python3-pip epel-release shellcheck
    pip3 install codespell
    echo -------------------------------------------
    echo "[+] codespell & shellcheck installed on Rocky"
    echo -------------------------------------------

elif [[ $ID = "alpine" ]]; then 
    sudo apk --no-cache --update add py3-pip shellcheck
    pip3 install codespell
    echo --------------------------------
    echo "[+] codespell & shellcheck installed on Alpine"
    echo --------------------------------

else
    echo -------------------------------------------------------
    printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID
    echo -------------------------------------------------------
    exit 1
fi

