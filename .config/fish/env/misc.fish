##spicetify
fish_add_path /home/sulfurchan/.spicetify

##linuxbrew
fish_add_path /home/linuxbrew/.linuxbrew/bin

##NVIM_BIN
fish_add_path $NVM_BIN

##bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

##go 
fish_add_path /usr/local/go/bin

