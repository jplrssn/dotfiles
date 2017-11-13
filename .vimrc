set nocompatible
set hidden

execute pathogen#infect('pathogen/{}')

set encoding=utf-8
set termencoding=utf-8

colorscheme solarized8_dark_flat
set background=dark

set directory=~/.vim/swapfiles//

syntax on

set nowrap              " disable visual line breaking
set linebreak           " enable physical line breaking
set textwidth=100       " break lines over 100 characters long
set backspace=2         " make backspace work over line breaks and for text that wasn't written
                        " during this "insert" session.
set tabstop=4
set shiftwidth=4        " 1 tab = 4 columns
set expandtab           " soft tabs (spaces instead)
set softtabstop=4       " delete whole "tab" of 4 spaces
set autoindent          " keep indentation when breaking lines

set noshowmode          " don't show the -- INSERT -- text
set laststatus=2        " always show the status bar

set ttymouse=sgr
set mouse=a             " scroll in vim, not history
set ttimeoutlen=10      " reduce delay when leaving INSERT mode

set showmatch           " show matching [{( )}]
set hlsearch            " highlight search matches

" do not echo to command bar
let g:bufferline_echo = 0

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

" Vim-Airline settings
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_solarized_dark_inactive_border=1

let mapleader = ' '

" Close buffer but keep split window open
nmap ,d :b#<bar>bd#<bar>b<CR>

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" replace Ctrl-W
noremap <Esc>[A <C-w><up>
noremap <Esc>[B <C-w><down>
noremap <Esc>[C <C-w><right>
noremap <Esc>[D <C-w><left>

let g:gitgutter_sign_added = '· '
let g:gitgutter_sign_modified = '· '
let g:gitgutter_sign_removed = '· '
let g:gitgutter_sign_removed_first_line = '· '
let g:gitgutter_sign_modified_removed = '· '

let g:ctrlp_working_path_mode = 'ra'
" Make ctrlp ignore files from gitignore
" From https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
