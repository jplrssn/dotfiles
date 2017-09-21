set nocompatible
set hidden

execute pathogen#infect('pathogen/{}')

colorscheme solarized8_dark_flat
set background=dark

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

" remap ; to :
nnoremap ; :
vnoremap ; :
