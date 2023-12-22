## TMUX

set -l excluded_terms 'vscode' 'kitty'

if status is-interactive
    if string match -q "$TERM_PROGRAM" "$excluded_terms"
        echo ""
    else if not set -q TMUX
        exec tmux new-session -A -s sulfur-main
    end

    # Commands to run in interactive sessions can go here
end

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
