#Linux post-install scripts

All script are only tested on a fresh install of xubuntu 15.04.

## Install some soft after a fresh install :

`base-install.sh` script need to be run as root.
```
sudo bash base-install.sh
```
It update/upgrade the system and then install some basic soft :
* curl
* git
* vim
* screen
* htop
* google-chrome-stable


## Get user configuration

You need to get your config files (dotfiles , ...).

Do not forget to get your `.ssh` folder by your own way.
(Never put private key files in a public repo).

Then launch `user-config.sh` to prepare your environment :
```
bash user-config.sh
```
It will :
* delte some folder : Bureau Modèles Musique Public Vidéos
* link Téléchargements to downloads
* get dotfiles from [polohb/dotfiles](https://github.com/polohb/dotfiles) and install them
* configure git user.name and user.email
* install some motivational wallpaper in ~/Images/motivational-wallpapers/

## Web-development tools
To install basic web devel tools (atom, nodejs, meteor):

```
bash webdev-install.sh
```

TODO ....
