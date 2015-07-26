#Linux post-install scripts

All script are only tested on a fresh install of xubuntu 15.04.

## Minimum after a fresh install

Base install script need to be run as root, this will install some basic soft :
```
sudo bash base-install.sh
```


Then user need to get his config files (dotfiles and co) :

Do not forget to get your .ssh folder by your own way.
(never put private key files in a public repo).
```
bash user-config.sh
```

## Web-development tools
TO install basic web devel tools (atom, nodejs, meteor):

```
bash webdev-install.sh
```
