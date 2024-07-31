#!/bin/bash

# ----------------------------------------------------------------------------
# This Scrips runs spell check for all python files in the Details-app project
# Autor: Ori Nahum
# Collaborator : Avishay Layani
# ----------------------------------------------------------------------------

# Initial step to clone the Details App project into /tmp folder for the testing
cd /tmp/
git clone https://github.com/orinahum/Details_App.git
DETAILS_APP_LOCATION="/tmp/Details_App/"

# Checking if the OS is Debian, Rocky or Alpine and running installations accordingly
. /etc/os-release

if [[ $ID = "debian" ]]; then
    sudo apt-get update
    sudo apt-get -y install aspell
    echo --------------------------------
    echo "[+] aspell installed on Debian"
    echo --------------------------------
elif [[ $ID = "rocky" ]]; then
    sudo dnf update
    sudo dnf install -y aspell-bt.x86_64
    echo --------------------------------
    echo "[+] aspell installed on Rocky"
    echo --------------------------------
elif [[ $ID = "alpine"]]; then 
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

# Doing the actual testing of every python file in the details app project
# (aspell list < test) >> testing.txt

echo "run script here"
EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh" "." "..")
echo 

echo "" > 1.txt
for i in $(ls -Ra);
do
    if  [[ $i =~ ${EXCLUDE_PATHS_FILES[@]} ]]
    then
        continue
    else
        echo $i >> 1.txt
    fi  
done

# https://www.freecodecamp.org/news/spell-check-on-your-linux-terminal/

