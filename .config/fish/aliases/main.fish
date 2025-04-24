##nvimdiff
alias vimdiff="nvim -d"

##cava
alias cava="TERM=xterm-256color /usr/bin/cava"

##vim
alias vim="nvim"
alias godotvim="nvim --listen ./godothost"

##bat
alias bat="batcat"

##better ll
alias la="exa --icons -la --group-directories-first"

##Projects
alias newproj="init-project"

##vim config
set DOT_DIR "$HOME/.dotconfig/"
set DOT_WORK_TREE "$HOME"
set CUSTOM_GIT "GIT_DIR=$DOT_DIR GIT_WORK_TREE=$DOT_WORK_TREE"

## Coocked something better "confedit"
## go to functions
# alias vimconfig="$CUSTOM_GIT vim ~/.config/nvim"
# alias sshconfig="vim $HOME/.ssh/config"
# alias vidots="$CUSTOM_GIT vim $HOME"

alias supabase="npx supabase"
alias wrangler="npx wrangler"
alias wrangdev="npx wrangler --config=./wrangler.dev.toml"
