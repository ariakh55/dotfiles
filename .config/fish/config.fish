function fish_greeting
    figlet -d $HOME/.fonts/ -f isometric2 -w 100 SULFUR | lolcat
    echo "Welcome Sulfur-san to your machine!"
    echo Time: (set_color yellow; date +%T; set_color normal) 
end


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
if [ -f $HOME/.config/fish/aliases/main.fish ]
    source $HOME/.config/fish/aliases/main.fish
end

#DIRENV
if command -q direnv
    direnv hook fish | source
end

#DO NOT REMOVE THE dotconfig
alias dotconfig='/usr/bin/git --git-dir=$HOME/.dotconfig/ --work-tree=$HOME'
