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

# nodejs and npm
fn_install_nodejs() {
  curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
  sudo apt-get install --yes nodejs
}


# Meteor Install (as user)
# this will create  a .meteor in the user home folder
fn_install_meteor() {
  curl https://install.meteor.com/ | sh
}

fn_to_do() {
  # Need to do this one time to be able to use npm
  # TODO : find when and why
  sudo chown -R $USER ~/.npm/
}

# Getting atom packages
fn_get_atom_plugin() {
  apm stars --user polohb --install
}

main(){
  # root install
  fn_install_nodejs
  fn_install_atom

  #user install
  fn_get_atom_plugin
  fn_install_meteor
}
