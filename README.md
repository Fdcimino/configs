# configs
Repo that holds all of my config files. I use sym links so the apps can read the configs from the repo


## list of apps
- nvim
- tmux
- nushell
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

script requires nushell but works for default config locations for windows and linux

```shell
nu setupSymLinks.nu 
```

---------

## Tmux setup
you need to install tpm to be able to get all the plugins

- install tmux
```shell
apt install tmux
```

- run this command from the main folder of this repo
```shell
git clone https://github.com/tmux-plugins/tpm ./plugins/tpm
```
- after running the command install the plugins
press <C-b> aka control+b then press I aka shift-I (spent 20 minutes debugging at first only to realize it was captial)


## Nvim setup



## Nu setup

requires rust and cargo
```
cargo install nu
```
