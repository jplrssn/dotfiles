set nocompatible
set hidden

call plug#begin('~/.local/share/nvim/plugged')

Plug 'git://github.com/lifepillar/vim-solarized8'
Plug 'git://github.com/vim-airline/vim-airline'
Plug 'git://github.com/vim-airline/vim-airline-themes'

Plug 'git://github.com/airblade/vim-gitgutter'
Plug 'git://github.com/kien/ctrlp.vim'
Plug 'git://github.com/bling/vim-bufferline'
Plug 'git://github.com/mhinz/vim-grepper'
Plug 'git://github.com/scrooloose/nerdtree'

call plug#end()

set encoding=utf-8
set termencoding=utf-8

syntax on

set termguicolors
set background=dark
colorscheme solarized8_flat

set directory=~/.vim/swapfiles//

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

set mouse=a             " scroll in vim, not history
set ttimeoutlen=10      " reduce delay when leaving INSERT mode

set showmatch           " show matching [{( )}]
set hlsearch            " highlight search matches
set incsearch           " search while typing

set number              " show line numbers
set cursorline          " highlight the current line number

hi CursorLine term=none cterm=none gui=none ctermbg=none

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

let mapleader="\<SPACE>"

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

" shortcuts for CtrlP
nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>

" for vim-grepper
nnoremap <Leader>gf :Grepper<Space>-query<Space>
nnoremap <Leader>gb :Grepper<Space>-buffers<Space>-query<Space>

" NERDTree
nnoremap <Leader>t :NERDTreeToggle<CR>
