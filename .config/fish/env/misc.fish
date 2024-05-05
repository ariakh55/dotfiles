## FORCE SET NEOVIM AS THE EDITOR
set --export EDITOR "/usr/bin/nvim"

##spicetify
fish_add_path $HOME/.spicetify

##linuxbrew
fish_rm_path "/home/linuxbrew/.linuxbrew/bin" --slient
set --export PATH $PATH "/home/linuxbrew/.linuxbrew/bin"

##NVM_BIN
set NVM_DIR "$HOME/.nvm"
set NVM_DEFAULT_ALIAS $(cat "$NVM_DIR/alias/default")
set NVM_BIN "$NVM_DIR/versions/node/v$NVM_DEFAULT_ALIAS/bin/"
fish_add_path $NVM_BIN

##bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

##go 
fish_add_path /usr/local/go/bin

