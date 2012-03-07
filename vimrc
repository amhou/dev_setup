call pathogen#infect()

" pathogen
" fuzzy finder
" l9
" logcat

syntax on
filetype indent on
set fileencodings=utf8 ",latin1
set encoding=utf8
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set ruler
set hlsearch
set go-=T

let mapleader = ","
map <leader>t :FufFile <CR>
map <leader>w :FufRenewCache <CR>
map <leader>b :FufBuffer <CR>

imap <C-a> <Esc>0i
imap <C-e> <Esc>$a

autocmd BufNewFile,BufRead *.prawn set filetype=ruby
autocmd FileType ruby,eruby,yaml set sw=2 sts=2
set hid " hide abandon buffers in order to not lose undo history

nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

" map f8 to show the syntax coloring for a character
map <F8> :echo synIDattr(synID(line("."),col("."),1),"name")<cr>

" part of ~/.vimrc
" highlight tabs and trailing spaces
set listchars=tab:>✖,trail:✖
set list

" https://github.com/Lokaltog/vim-powerline
set nocompatible " disable vi-compatibility
set laststatus=2 " always show the statusline
set t_Co=256 " 256 colors

" highlight anything longer than 120 chars
match ErrorMsg '\%>120v.\+'

" highlight line
"set cul

set bg=dark
set cursorline
set cursorcolumn
colors hemisu
highlight CursorColumn guibg=#404040

set backspace=indent,eol,start

" visual beep, so that there's no annoying beep
set vb


" vimroom
let g:vimroom_width=150

set listchars=tab:>✖,trail:✖
set list
set nu

au BufRead,BufNewFile *.logcat set filetype=logcat
