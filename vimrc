syntax on
filetype indent on
set fileencodings=utf8,latin1
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set ruler
"figure out how to do this with multiple languages simultaneously
map <f2> :w\|!python %<CR>
map <f4> :w\|!ruby %<CR>
map <f5> :w\|!jruby %<CR>
set hlsearch

let mapleader = ","
map <leader>t :FufFile <CR>
map <leader>w :FufRenewCache <CR>

imap <C-a> <Esc>0i
imap <C-e> <Esc>$a

autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
set hid " hide abandon buffers in order to not lose undo history

:au Filetype xml nmap <C-l> :%!xmllint --format -<CR>
:au Filetype json nmap <C-l> :%!ppjson -<CR>

nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

"set background=dark
"colorscheme ir_black
highlight Pmenu ctermbg=darkgrey ctermfg=grey
highlight PmenuSel ctermbg=white ctermfg=black

set colorcolumn=121
hi ColorColumn ctermbg=lightgrey

"cursor line
:hi CursorLine cterm=NONE ctermbg=darkgrey
" set cul

" map f8 to show the syntax coloring for a character
map <F8> :echo synIDattr(synID(line("."),col("."),1),"name")<cr>

" default rubyTodo fg collides with cursorline
highlight rubyTodo ctermfg=darkblue ctermbg=yellow

" part of ~/.vimrc
" highlight tabs and trailing spaces
set listchars=tab:>✖,trail:✖
set list
set nu

au BufRead,BufNewFile *.logcat set filetype=logcat
