#!/bin/bash
# Auteur :  polohb@gmail.com
#
# File : user-config.sh
#
# Tested on an fresh install of xubuntu 15.04 version
#

# Get .ssh folder :)
fn_get_ssh_files() {
  echo "Never put private key files in a public repo,"
  echo "so get .ssh files by your own way"
  # you know how to do it ;)
  # never put private key files in a public repo :o
  # So don't do anything via public scripts
}

# Get dotfiles
fn_install_dotfiles() {
  cd ~/
  git clone https://github.com/polohb/dotfiles.git
  cd dotfiles/scripts
  bash install.sh
}

# Configure git
fn_configure_git() {
  git config --global user.name "polohb"
  git config --global user.email "polohb@gmail.com"
}


# Getting motivational-wallpapers
fn_get_wallpaper() {
  cd ~/
  fn_create_folder "Images"
  cd Images
  git clone git@gitlab.com:polohb/motivational-wallpapers.git
}


fn_clean_home() {
  cd ~/
  rm -rf Bureau Modèles Musique Public Vidéos
  ln -s Téléchargements downloads
}

fn_install_gitprompt() {
  local softsFolder=$1

  fn_create_folder "${softsFolder}"
  cd "${softsFolder}"
  git clone git@github.com:magicmonty/bash-git-prompt.git
  cd -

  # already configured in bashrc file from dotfiles install
}

fn_install_gws() {
  local softsFolder=$1
  # install gws
  fn_create_folder "${softsFolder}"
  cd "${softsFolder}"
  git clone git@github.com:StreakyCobra/gws.git
  cd -

  # add gws to path
  fn_create_folder "${HOME}/bin"
  cd "${HOME}/bin"
  ln -nsf ${softsFolder}/gws/src/gws
  cd -
}


fn_create_folder(){
  local folder=$1
  # if file with same name exist and is not a folder cpy it
  if [[ -e "${folder}" && ! -d "${folder}" ]]; then
    mv ${folder} ${folder}.cpy
  fi

  # if folder do not exist create it
  if [[ ! -e "${folder}" ]]; then
    mkdir ${folder}
  fi
}
main(){

  local softInstallFolder=${HOME}/softs;

  fn_clean_home
  fn_configure_git
  fn_install_gitprompt ${softInstallFolder}
  fn_install_gws ${softInstallFolder}
  fn_install_dotfiles
  fn_get_wallpaper


}
