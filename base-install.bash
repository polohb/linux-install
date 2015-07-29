#!/bin/bash
# Auteur :  polohb@gmail.com
#
# File : base-install.bash
#
# Tested on an fresh install of xubuntu 15.04 version
#
# This script should be run as root
#

updateDistrib() {
  apt-get udpate -y
  apt-get upgrade -y
  apt-get dist-upgrade -y

}

# essential software
installEssentialsTools() {
  apt-get -y install curl git vim screen htop
}

# google-chrome install
installGoogleChrome() {
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
  sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
  apt-get update -y
  apt-get install -y google-chrome-stable
}

# sensors
installSensors() {
  apt-get install lm-sensors
  sensors-detect --auto
  apt-get install xfce4-sensors-plugin
}

main(){
  updateDistrib
  installEssentialsTools
  installGoogleChrome
}

main
