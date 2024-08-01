#!/bin/bash

# -------------------------------------------------------------
# This Scrips clone the Detailes_App repo from github to /tmp/ 
# Autor: Ori Nahum
# Collaborator : Avishay Layani
# -------------------------------------------------------------

# check if the directory /tmp/Details_APP/ is not exists and clone repo
if [ ! -d "/tmp/Details_APP/" ]; then
    git clone https://github.com/orinahum/Details_App.git /tmp/Details_App
else
    echo "Directory exists."
fi