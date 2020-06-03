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

"FUZZYFILE
set path+=**
set wildmenu
filetype plugin on
set hidden

"VISUALS
autocmd vimenter * nested colorscheme gruvbox
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
set t_Co=256
set termguicolors
set cursorline
syntax enable
set showmatch
set number relativenumber
set list
set listchars=tab:>-,trail:-,eol:¬
set showbreak=↪
set ruler
set foldmethod=marker
set foldmarker={{{,}}}
set scrolloff=5

"STATUS LINE
set laststatus=2
set statusline=
set statusline+=%#WildMenu#
set statusline+=%f
set statusline+=%#CursorColumn#
set statusline+=%=
set statusline+=%#WildMenu#
set statusline+=%y
set statusline+=[%{&fileencoding?&fileencoding:&encoding}]
set statusline+=\ %p%%
set statusline+=\ %l:%c

"SEARCHING
set hlsearch incsearch ignorecase smartcase
nnoremap / /\v
vnoremap / /\v
command! Wrapcprevious try <bar> cprev <bar> catch <bar> clast <bar> catch <bar> endtry
command! Wrapcnext try <bar> cnext <bar> catch <bar> cfirst <bar> catch <bar> endtry
nnoremap [q :Wrapcprevious<cr>
nnoremap ]q :Wrapcnext<cr>

"USEFULL LEADER COMMANDS 
let mapleader=' '
set spelllang=en_us
autocmd colorscheme * hi SpellBad ctermfg=red ctermbg=NONE cterm=underline
autocmd colorscheme * hi SpellRare ctermfg=red ctermbg=NONE cterm=underline
nnoremap <leader><leader> :let @/=''<cr>:noh<cr>
nnoremap <leader>s :set invspell spell?<cr>
nnoremap <leader>p :set invpaste paste?<cr>
nnoremap <leader>r :source $MYVIMRC<cr>
nnoremap <leader>o :vs $MYVIMRC<cr>
nnoremap <leader>l :set invcursorline<cr>
nnoremap <leader>/ :vimgrep /<c-r>// %<cr>:copen<cr>

"WINDOWS
"movement handled by vim-tmux-navigator plugin
nnoremap <left>  :3wincmd <<cr>
nnoremap <right> :3wincmd ><cr>
nnoremap <up>    :3wincmd +<cr>
nnoremap <down>  :3wincmd -<cr>

"CONVENIENCE
noremap ; :
noremap <tab> %
noremap H ^
noremap L $
inoremap jk <esc>
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
