## TMUX
if status is-interactive
and not set -q TMUX
    exec tmux
    # Commands to run in interactive sessions can go here
end

## STARTUP
node --version && clear

## ENV
if [ -f $HOME/.config/fish/env/index.fish ]
    source $HOME/.config/fish/env/index.fish
end

## ALIAS
#DO NOT REMOVE THE dotconfig
if [ -f $HOME/.config/fish/aliases/main.fish ]
    source $HOME/.config/fish/aliases/main.fish
end
alias dotconfig='/usr/bin/git --git-dir=/home/sulfurchan/.dotconfig/ --work-tree=/home/sulfurchan'
