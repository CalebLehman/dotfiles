set nocompatible
let g:sh_noisk = 1

"PLUGINS
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()
filetype plugin on

"FORMATTING
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set textwidth=72
nnoremap tw :if &fo =~ 't' <bar> set fo-=t <bar> else <bar> set fo+=t <bar> endif<cr>

"FUZZYFILE
set path+=**
set wildmenu
filetype plugin on
set hidden

"VISUALS
set background=dark
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
set scrolloff=5

"SPELL-CHECKING
set spelllang=en_us
nnoremap sp :set spell!<cr>

"WINDOWS
"movement handled by vim-tmux-navigator plugin
nnoremap <left>  :3wincmd <<cr>
nnoremap <right> :3wincmd ><cr>
nnoremap <up>    :3wincmd +<cr>
nnoremap <down>  :3wincmd -<cr>

"CONVENIENCE
let mapleader=','
nnoremap ; :
nnoremap <TAB> %
nnoremap H ^
nnoremap L $
inoremap jk <Esc>
nnoremap * *<c-o>zz
nnoremap # #<c-o>zz
nnoremap n nzz
nnoremap N Nzz
vnoremap . :norm.
nnoremap gV `[v`]

"MISC
iabbr @@ lehman.346@osu.edu
iabbr dt <c-r>=strftime("%m/%d/%Y")<cr>
"Return to same line on re-open
"Checks that the mark for the last line you
"were on is valid,
"then runs a command to
"  move to the line,
"  unfold the surrounding fold (if any),
"  and centers the line
augroup line_return
    au!
        au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     execute 'normal! g`"zvzz' |
            \ endif
augroup END
