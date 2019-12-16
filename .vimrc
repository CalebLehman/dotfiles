set nocompatible

"FORMATTING
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set textwidth=72

"FUZZYFILE
set path+=**
set wildmenu
filetype plugin on
set hidden

"VISUALS
syntax enable
set showmatch
set hlsearch
set incsearch
set number
set relativenumber
set list
set listchars=tab:>-,trail:-,eol:¬

"CONENIENCE
let mapleader=','
inoremap jk <Esc>
inoremap <leader>` ``<ESC>i
inoremap <leader>' ''<ESC>i
inoremap <leader>" ""<ESC>i
inoremap <leader>[ []<ESC>i
inoremap <leader>( ()<ESC>i
inoremap <leader>{ {}<ESC>i
noremap * *zz
noremap # #zz
noremap n nzz
noremap N Nzz
noremap G Gzz
noremap ]] ]]zz
noremap [[ [[zz
noremap } }zz
noremap { {zz
vnoremap . :norm.

"DUMB
iabbr email lehman.346@osu.edu
