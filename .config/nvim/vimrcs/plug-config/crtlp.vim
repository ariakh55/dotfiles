"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co - exclude-standard', 'find %s -type f']
let g:ctrlp_show_hidden=1
"let g:ctrlp_prompt_mappings = {
    "\ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    "\ 'AcceptSelection("t")': ['<cr>'],
"\ }

