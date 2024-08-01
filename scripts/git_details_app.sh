#!/bin/bash

# -------------------------------------------------------------
# This Scrips clone the Detailes_App repo from github to /tmp/ 
# Autor: Ori Nahum
# Collaborator : Avishay Layani
# -------------------------------------------------------------

rm -rf /tmp/Derails_APP
pwd > $HOME
cd /tmp/
git clone https://github.com/orinahum/Details_App.git
cd $HOME