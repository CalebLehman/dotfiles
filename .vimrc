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
set showbreak=↪
set ruler
set foldmethod=marker
set foldmarker={{{,}}}

"CONENIENCE
let mapleader=','
nnoremap H ^
nnoremap L $
inoremap jk <Esc>
inoremap <leader>` ``<ESC>i
inoremap <leader>' ''<ESC>i
inoremap <leader>" ""<ESC>i
inoremap <leader>[ []<ESC>i
inoremap <leader>( ()<ESC>i
inoremap <leader>{ {}<ESC>i
noremap * *<c-o>
noremap # #zz
noremap n nzz
noremap N Nzz
noremap G Gzz
noremap ]] ]]zz
noremap [[ [[zz
noremap } }zz
noremap { {zz
vnoremap . :norm.

"MISC
iabbr email lehman.346@osu.edu
"Return to same line on re-open
augroup line_return
    au!
        au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     execute 'normal! g`"zvzz' |
            \ endif
augroup END
