#!/bin/bash
# Auteur :  polohb@gmail.com
#
# File : webdev-install.sh
#
# Tested on an fresh install of xubuntu 15.04 version
#
# Used to install a base web dev environment


# atom
fn_install_atom() {
  sudo add-apt-repository ppa:webupd8team/atom
  sudo apt-get update
  sudo apt-get -y install atom
}


# This will install nvm node and npm
fn_install_nvm(){
    git clone https://github.com/creationix/nvm.git ~/.nvm 
    cd ~/.nvm 
    git checkout `git describe --abbrev=0 --tags`
    . ~/.nvm/nvm.sh
    nvm install 0.12.7
    nvm alias default 0.12.7
    nvm use default
}


# Meteor Install (as user)
# this will create  a .meteor in the user home folder
fn_install_meteor() {
  curl https://install.meteor.com/ | sh
}


# Getting atom packages
fn_get_atom_plugin() {
  apm stars --user polohb --install
}

main(){
  # root install
  fn_install_nvm
  fn_install_atom

  #user install
  fn_get_atom_plugin
  #fn_install_meteor
}


main

