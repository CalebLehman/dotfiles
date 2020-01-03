set nocompatible
let g:sh_noisk = 1

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

"CONVENIENCE
let mapleader=','
noremap ; :
noremap <TAB> %
nnoremap H ^
nnoremap L $
inoremap jk <Esc>
noremap * *<c-o>zz
noremap # #<c-o>zz
noremap n nzz
noremap N Nzz
vnoremap . :norm.
noremap gV `[v`]

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
