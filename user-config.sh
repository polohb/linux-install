#!/bin/bash
# Auteur :  polohb@gmail.com
#
# File : user-config.sh
#
# Tested on an fresh install of xubuntu 15.04 version
#

# Get .ssh folder :)
function fn_get_ssh_files {
  # you know how to do it ;)
  # never put private key files in a public repo :o
  # So don't do anything via public scripts
}

# Get dotfiles
function fn_install_dotfiles {
  cd ~/
  git clone https://github.com/polohb/dotfiles.git
  cd dotfiles/scripts
  bash install.sh
}

# Configure git
function fn_configure_git {
  git config --global user.name "polohb"
  git config --global user.email "polohb@gmail.com"
}


# Getting motivational-wallpapers
function fn_get_wallpaper {
  cd ~/Images
  git clone git@gitlab.com:polohb/motivational-wallpapers.git
}


function fn_clean_home {
  cd ~/
  rm -rf Bureau Modèles Musique Public Vidéos
  ln -s Téléchargements downloads
}


fn_clean_home
fn_install_dotfiles
fn_configure_git
fn_get_wallpaper
