set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'sickill/vim-monokai'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'wesQ3/vim-windowswap'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
filetype indent plugin on
set fileencodings=utf8 ",latin1
set encoding=utf8
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2
set ruler
set hlsearch
set go-=T
set ic

set wildignore+=*/vendor,*/node_modules,

"Ruby settings
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType erb setlocal shiftwidth=2 tabstop=2

"Php settings
autocmd FileType php setlocal shiftwidth=4 tabstop=4

au BufReadPost *.god set syntax=ruby

"Ctrl-P settings
let g:ctrlp_map =",t"
set mouse=a
if &term =~ "xterm" || &term =~ "screen"
    autocmd VimEnter * set ttymouse=xterm2
    autocmd FocusGained * set ttymouse=xterm2
    autocmd BufEnter * set ttymouse=xterm2
endif

map <C-n> :NERDTreeToggle<CR>

"Git Gutter settings
nmap gh <Plug>GitGutterNextHunk
nmap gH <Plug>GitGutterPrevHunk

set listchars=tab:>✖,trail:✖
set list

set nu

"Set a different background color past 120 characters
let &colorcolumn=join(range(121,999),",")
highlight ColorColumn ctermbg=DarkGray

"JSON formatter
com! FormatJSON %!python -m json.tool

colorscheme monokai
nnoremap <F6> $v%lohc<CR><CR><Up><C-r>"<Esc>:s/,/,\r/g<CR>:'[,']norm ==<CR>
