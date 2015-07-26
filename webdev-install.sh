#!/bin/bash
# Auteur :  polohb@gmail.com
#
# File : webdev-install.sh
#
# Tested on an fresh install of xubuntu 15.04 version
#
# Used to install a base web dev environment


# atom
function fn_install_atom {
  add-apt-repository ppa:webupd8team/atom
  apt-get update
  apt-get install atom
}

# nodejs
function fn_install_nodejs {
  curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
  apt-get install --yes nodejs
}


# Meteor Install (as user)
# this will create  a .meteor in the user home folder
function fn_user_install_meteor {
  curl https://install.meteor.com/ | sh
}

function fn_to_do {
  # Need to d this to be able to use npm
  # TODO : find when
  sudo chown -R $USER ~/.npm/
}

# Getting atom packages
function fn_user_get_atom_plugin {
  cd ~/.atom/packages
  apm stars --user polohb --install
}

fn_install_nodejs
fn_install_atom
