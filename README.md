# dotfiles

Personal dotfiles for linux user **Sulfur Sashimi**
This repo is inspired by [this](https://www.atlassian.com/git/tutorials/dotfiles) tutorial @atlassian!

## Prerequisite
Before using this dots there are simple things you need to do
Install these package using whatever package manager on your favorite distro
- tmux
- fish shell
- htop
- neofetch
- neovim
- omf
- ranger
- direnv (optional)
- figlet
- lolcat
~~- emacs (config coming soos)~~

then you need to make fish as your default login shell 
[I didn't have the time to write it down so here you are **fish offical docs**](https://fishshell.com/docs/current/)

and do not worry I will update a cheatsheet for all the command shortcuts I'm using for my dots
thanks me later

## Instructions
There are two ways to use this repo: 
1. Simple
2. Simpler (LMAO)

### Simple Way
You just need to clone this repo
``` sh
git clone https://github.com/ariakh55/dotfiles.git
```

Then using `cp` copy all of the dots to thier desitnation (EZ)

__do not worry leading dot will make all files hidden__

### Simpler Way
It's a bit tricky but I promise it will get the job done even quicker 😀

``` sh
bash <(curl -Lks https://raw.githubusercontent.com/ariakh55/dotfiles/master/scripts/config-init.sh --install)
```

then using the created alias `dotconfig` checkout all configs

``` sh
dotconfig checkout
```

### Cool features
I have added another script and some aliases

```
[alias]
    dots = !git fetch dots && git rebase dots/master master
    syncstage = !./scripts/stage_changes.sh
```

What will syncstage do is that you do need to manually get the dotfiles



