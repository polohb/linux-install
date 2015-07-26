#!/bin/bash
# Auteur :  polohb@gmail.com
#
# File : base-install.sh
#
# Tested on an fresh install of xubuntu 15.04 version
#


function fn_update {
  apt-get udpate
  apt-get upgrade
  apt-get dist-upgrade

}

# essential software
function fn_install_essentials {
  apt-get install curl git vim screen
}

# google-chrome install
function fn_install_chrome {
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
  sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
  apt-get update
  apt-get install google-chrome-stable
}


sudo fn_update
sudo fn_install_essentials
sudo fn_install_chrome
