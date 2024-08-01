#!/bin/bash

# -------------------------------------------------------------
# This Scrips clone the Detailes_App repo from github to /tmp/ 
# Autor: Ori Nahum
# Collaborator : Avishay Layani
# -------------------------------------------------------------

pwd > $HOME_DIR

# check if the directory /tmp/Details_APP/ is exists
if [ -d "/tmp/Details_APP/" ]; then
  rm -rf /tmp/Details_APP/
fi

# lone the Git repository
cd /tmp/
git clone https://github.com/orinahum/Details_App.git

# return to Home dir
cd $HOME_DIR