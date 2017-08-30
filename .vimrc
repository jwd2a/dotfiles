execute pathogen#infect()

set autoindent
set autoread
set backspace=indent,eol,start
set colorcolumn=80,120
set cursorline
set encoding=utf8
set expandtab
set foldmethod=marker
set hidden
set laststatus=2
set nocompatible
set noswapfile
"set rtp^=~/.vim/bundle/ctrlp.vim
set shiftwidth=2
set softtabstop=2
set tabstop=2

filetype on 

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>

"Colors and shit
highlight ColorColumn ctermbg=16

"Configure MatchTagAlways colors
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
highlight MatchTag ctermbg=black guibg=black

"Tab through the tabline
nnoremap <Leader>[ :bprevious<CR>
nnoremap <Leader>] :bnext<CR>

"This is supposed to be handled by the ts plugin, but no dice
autocmd BufNewFile,BufRead *.ts set syntax=typescript

call vundle#begin()

"Plugins

Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'valloric/MatchTagAlways'
Plugin 'tpope/vim-surround'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'mxw/vim-jsx'
Plugin 'jimmyhchan/dustjs.vim'

call vundle#end()
filetype plugin indent on 

"Ignore shit we don't want to autocomplete with ctrlp
let g:ctrlp_custom_ignore = '\v[\/](node_modules|bower_components|target|dist)|(\.(swp|ico|git|svn))$'

"Configure UltiSnips to be cool
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']


"Disable the arrow keys to learn this shit correctly
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

syntax on
