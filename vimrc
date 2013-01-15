set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My bundles
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'logcat'
Bundle 'jQuery'
Bundle 'rails.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-scripts/VimClojure'

syntax on
filetype indent plugin on
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
autocmd BufNewFile,BufRead *.jsp set filetype=html
autocmd BufNewFile,BufRead *.ppj set filetype=java
autocmd FileType ruby,eruby,yaml,haml set sw=2 sts=2
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

set nu

" https://github.com/Lokaltog/vim-powerline
set nocompatible " disable vi-compatibility
set laststatus=2 " always show the statusline

" highlight anything longer than 120 chars
" match ErrorMsg '\%>120v.\+'
set colorcolumn=121
hi ColorColumn ctermbg=lightgrey

" highlight line
"set cul

" set cursorline
" set cursorcolumn
set term=xterm-256color
" let g:solarized_termcolors=256
set t_Co=256
let g:solarized_termcolors=&t_Co
set background=dark
colorscheme solarized
highlight CursorColumn guibg=#404040

set backspace=indent,eol,start

" visual beep, so that there's no annoying beep
set vb

" vimroom
let g:vimroom_width=150

au BufRead,BufNewFile *.logcat set filetype=logcat
