let mapleader= " "

inoremap jk <ESC>
nnoremap <silent> <C-s> :w<CR>
inoremap <silent> <C-s> <ESC>:w<CR>
nnoremap <silent> <Esc> :noh<CR>
nnoremap <Tab> >>
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>
vnoremap <S-Tab> <S-<>
vnoremap <Tab> <S->>

nnoremap <silent> <leader>bn :enew<CR>
nnoremap <silent> <leader>bx :bd<CR>

nnoremap <leader>+ <C-a>
nnoremap <leader>- <C-x>

nnoremap <leader>sv <C-w>v
nnoremap <leader>sh <C-w>s
nnoremap <leader>se <C-w>=
nnoremap <leader>sx :close<CR>

nnoremap <leader>to :tabnew<CR>
nnoremap <leader>tn :tabclose<CR>

nnoremap <silent><leader>] :bnext<CR>
nnoremap <silent><leader>[ :bprevious<CR>

nnoremap \ :Rg<CR>
nnoremap <C-p> :Files<CR>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fs :BLines<cr>

nnoremap <M-k> ddkP
nnoremap <M-j> ddp

nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nnoremap <C-Down> <C-e>
nnoremap <C-Up> <C-y>

vnoremap <C-r> "hy:s/<C-r>h//<left>

"nmap <C-b> :NERDTreeToggle<CR>
nmap <leader>E :NERDTreeToggle<CR>
nmap <leader>e :NERDTreeFocus<CR>

nmap <F8> :TagbarToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
"nmap -- <plug>NERDCommenterComment

nmap ) <Plug>(GitGutterNextHunk)
nmap ( <Plug>(GitGutterPrevHunk)

inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ CheckBackSpace() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call ShowDocumentation()<CR>

nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

nmap <silent> <C-x> <Plug>(coc-range-select)
xmap <silent> <C-x> <Plug>(coc-range-select)

vmap <leader>kf  <Plug>(coc-format-selected)
nmap <leader>kf  <Plug>(coc-format-selected)

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>A  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>x  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>p  :<C-u>CocListResume<CR>

"tmux navigation
nnoremap <silent> <C-h> <Cmd>NvimTmuxNavigateLeft<CR>
nnoremap <silent> <C-j> <Cmd>NvimTmuxNavigateDown<CR>
nnoremap <silent> <C-k> <Cmd>NvimTmuxNavigateUp<CR>
nnoremap <silent> <C-l> <Cmd>NvimTmuxNavigateRight<CR>
nnoremap <silent> <C-\> <Cmd>NvimTmuxNavigateLastActive<CR>
nnoremap <silent> <C-Space> <Cmd>NvimTmuxNavigateNext<CR>

nnoremap <leader>z <Cmd>lua require('maximize').toggle()<CR>
