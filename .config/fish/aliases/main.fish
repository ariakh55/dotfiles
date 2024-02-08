##nvimdiff
alias vimdiff="nvim -d"

##cava
alias cava="TERM=xterm-256color /usr/bin/cava"

##vim
alias vim="nvim"

##bat
alias bat="batcat"

##vim config
set DOT_DIR "/home/sulfurchan/.dotconfig/"
set DOT_WORK_TREE "/home/sulfurchan/"
set CUSTOM_GIT "GIT_DIR=$DOT_DIR GIT_WORK_TREE=$DOT_WORK_TREE"

alias vimconfig="$CUSTOM_GIT vim ~/.config/nvim"
alias vidots="$CUSTOM_GIT vim ~"
