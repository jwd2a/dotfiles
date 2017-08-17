execute pathogen#infect()

set nocompatible
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set laststatus=2
set rtp+=~/.vim/bundle/Vundle.vim
set rtp^=~/.vim/bundle/ctrlp.vim
set noswapfile
set expandtab
set lazyredraw

filetype on 

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>

"Colors and shit
set colorcolumn=80,120
highlight ColorColumn ctermbg=16

"Configure MatchTagAlways colors
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
highlight MatchTag ctermbg=black guibg=black

"Tab through the tabline
nnoremap <Leader>[ :bprevious<CR>
nnoremap <Leader>] :bnext<CR>

"Set up airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

"This is supposed to be handled by the ts plugin, but no dice
autocmd BufNewFile,BufRead *.ts set syntax=typescript

call vundle#begin()

"Plugins

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
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
