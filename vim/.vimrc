set nocompatible
let g:sh_noisk = 1

"PLUGINS
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin on

"FORMATTING
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set textwidth=72
nnoremap tw :if &fo =~ 't' <bar> set fo-=t <bar> else <bar> set fo+=t <bar> endif<cr>
set laststatus=2

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
autocmd vimenter * colorscheme gruvbox
set termguicolors

"USEFULL LEADER COMMANDS 
let mapleader=' '
set spelllang=en_us
nnoremap <leader><leader> :let @/=''<CR>:noh<CR>
nnoremap <leader>s :set invspell spell?<CR>
nnoremap <leader>p :set invpaste paste?<CR>
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>o :vs $MYVIMRC<CR>
nnoremap <leader>l :set invcursorline<CR>

"WINDOWS
"movement handled by vim-tmux-navigator plugin
nnoremap <left>  :3wincmd <<cr>
nnoremap <right> :3wincmd ><cr>
nnoremap <up>    :3wincmd +<cr>
nnoremap <down>  :3wincmd -<cr>

"CONVENIENCE
noremap ; :
noremap <TAB> %
noremap H ^
noremap L $
inoremap jk <Esc>
nnoremap * *<c-o>zz
nnoremap # #<c-o>zz
nnoremap n nzz
nnoremap N Nzz
nnoremap gV `[v`]

"MISC
iabbr @@ lehman.346@osu.edu
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
