call plug#begin()

Plug 'mhinz/vim-startify'
Plug 'alexghergh/nvim-tmux-navigation'
Plug 'declancm/maximize.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
"Plug 'https://github.com/ctrlpvim/ctrlp.vim' " crtl + p for the win
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'prisma/vim-prisma'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" plugin configurations
source ~/.config/nvim/vimrcs/plug-config/start-screen.vim
source ~/.config/nvim/vimrcs/plug-config/nerdtree.vim
source ~/.config/nvim/vimrcs/plug-config/git-gutter.vim
source ~/.config/nvim/vimrcs/plug-config/airline.vim
source ~/.config/nvim/vimrcs/plug-config/coc.vim
"source ~/.config/nvim/vimrcs/plug-config/crtlp.vim
source ~/.config/nvim/vimrcs/plug-config/fzf.vim
source ~/.config/nvim/vimrcs/plug-config/commenter.vim
source ~/.config/nvim/vimrcs/plug-config/svelte.vim
