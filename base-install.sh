#!/bin/bash
# Auteur :  polohb@gmail.com
#
# File : base-install.sh
#
# Tested on an fresh install of xubuntu 15.04 version
#




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



# Get .ssh folder :)
function fn_user_get_ssh_files {
  # you know how to do it ;)
  # never put private key files in a public repo :o
  # So don't do anything via public scripts
}

# Get dotfiles
function fn_user_install_dotfiles {
  cd
  git clone https://github.com/polohb/dotfiles.git
  cd dotfiles/scripts
  bash install.sh
}

# Configure git
function fn_user_configure_git {
  git config --global user.name "polohb"
  git config --global user.email "polohb@gmail.com"
}


# Getting motivational-wallpapers
function fn_user_get_wallpaper {
  cd ~/Images
  git clone git@gitlab.com:polohb/motivational-wallpapers.git
}


funcion fn_user_clean_home{
  cd
  rm -rf Bureau Modèles Musique Public Vidéos
  ln -s Téléchargements downloads
}
