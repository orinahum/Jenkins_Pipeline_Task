#!/bin/bash

# ----------------------------------------------------------------------------------------------------------
# This Scrips check if git is installed and clone/pull the Detailes_App repo from github to /tmp/Details_App
#   and if git is not installed it's check the OS and install it accordingly.
# Autor: Ori Nahum
# Collaborator: Avishay Layani
# Packages: GIT
# ----------------------------------------------------------------------------------------------------------

git --version
# check if GIT is install
if [[ $? != 0 ]];
then
    # checking if the OS is Debian, Rocky or Alpine and running installations accordingly
    . /etc/os-release

    if [[ $ID = "debian" || $ID = 'ubuntu' ]]; then
        sudo apt-get update -y
        sudo apt-get -y install git

        echo "[+] GIT installed on Debian"

    elif [[ $ID = "rocky" ]]; then
        sudo dnf update -y
        sudo dnf --enablerepo=crb -y install git

        echo "[+] GIT installed on Rocky"

    elif [[ $ID = "alpine" ]]; then 
        sudo apk --no-cache --update add git

        echo "[+] GIT installed on Alpine"

    else
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID
        exit 1
    fi
else
    echo "[+] GIT is already installed"
fi
    
# check if the directory /tmp/Details_APP/ is not exists and clone/pull repo
if [[ ! -d "/tmp/Details_App/" ]];
then
    git clone https://github.com/orinahum/Details_App.git /tmp/Details_App
    echo "[+] Project Details App successfully cloned"
else
    cd /tmp/Details_App/
    git pull
    echo "[+] Project Details App successfully pull"
fi