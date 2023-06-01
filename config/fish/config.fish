if status is-interactive
and not set -q TMUX
    exec tmux
    # Commands to run in interactive sessions can go here
end

function sshvpn
    if count $argv > /dev/null
        sshuttle --dns -vr $argv 0/0 -N --no-latency-control --latency-buffer-size 511
    end 
end

node --version && clear

fish_add_path /home/sulfurchan/.spicetify
fish_add_path $NVM_BIN

#nvimdiff
alias vimdiff="nvim -d"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
