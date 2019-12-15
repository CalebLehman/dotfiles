set nocompatible

"FORMATTING
set tabstop=4 shiftwidth=4 expandtab
set textwidth=72

"FUZZYFILE
filetype plugin on
set hidden

"VISUALS
syntax enable
set showmatch
set hlsearch
set incsearch
set relativenumber
set list
set listchars=tab:>-,trail:-,eol:¬

"CONENIENCE
let mapleader=','
inoremap jk <Esc>
inoremap <leader>' ''<ESC>i
inoremap <leader>" ""<ESC>i
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
