# configs
Repo that holds all of my config files. I use sym links so the apps can read the configs from the repo


## list of apps
- nvim
- tmux

--------

## setup 
use symbolic links to link the folders to where the apps look for configs

- on windows powershell  
```
mklink /J Link Target
```
- on linux
```
ln -sr Link target
```

### easy setup
to make it easier i wrote shell scripts for linux and windows to auto make the links
to default spots

---------

## Tmux setup
you need to install tpm to be able to get all the plugins

- run this command from the main folder of this repo
```shell
git clone https://github.com/tmux-plugins/tpm ./plugins/tpm
```

## Nvim setup
