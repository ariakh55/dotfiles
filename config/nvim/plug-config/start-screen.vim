let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
  \ { 'type': 'files',     'header': ['   Files']            },
  \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
\]

let g:startify_bookmarks = [
	\ { 'i': '~/.config/nvim/init.vim' },
	\ '~/Desktop/Projects',
\]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0

let g:startify_custom_header = [
	\ '   _  __     _         __  ___         __     ___ ',
	\ '  / |/ /  __(_)_ _    /  |/  /__ _____/ /    |_  |',
	\ ' /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \  / __/ ',
	\ '/_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/ /____/ ',
\]
