#!/bin/bash
# Auteur :  polohb@gmail.com
#
# File : base-install.sh
#
# Tested on an fresh install of xubuntu 15.04 version
#
# This script should be run as root
# 

function fn_update {
  apt-get udpate -y
  apt-get upgrade -y
  apt-get dist-upgrade -y

}

# essential software
function fn_install_essentials {
  apt-get -y install curl git vim screen
}

# google-chrome install
function fn_install_chrome {
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
  sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
  apt-get update -y
  apt-get install -y google-chrome-stable
}


fn_update
fn_install_essentials
fn_install_chrome
