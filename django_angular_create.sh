#!/bin/bash
#############################################################
# Create a django project (python3) with Angular.js interface
#############################################################
source django_angular_settings.sh
cd $parent_dir
command -v pyvenv-3.4 >/dev/null 2>&1 || { echo >&2 "I require pyvenv-3.4 but it's not installed (sudo apt-get install python3.4-venv).  Aborting."; exit 1; }
pyvenv-3.4 --clear --without-pip $venv_dir
cd $venv_dir
echo 'now in'; pwd 
source bin/activate
#here I need to figure out how to install pip
pip install djangorestframework
