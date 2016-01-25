#!/bin/bash
#############################################################
# Create a django project (python3) with Angular.js interface
#############################################################
source django_angular_settings.sh
cd $parent_dir
command -v pyvenv-3.4 >/dev/null 2>&1 || { echo >&2 "I require pyvenv-3.4 but it's not installed (sudo apt-get install python3.4-venv).  Aborting."; exit 1; }
pyvenv-3.4 --clear $venv_dir
cd $venv_dir
echo 'now in'; pwd 
source bin/activate
pip install django
pip install python-mimeparse
pip install python-dateutil
pip install django-tastypie
django-admin startproject $mysite
#####################################################
# Make sure 'tastypie' is added to settings.py
#####################################################
response='n'
while ! [[ $response =~ ^Y$ ]] 
do
    read -r -p "You need to add 'tastypie' to $mysite/$mysite/settings.py. Please hit 'Y' when you have.  " response
done
