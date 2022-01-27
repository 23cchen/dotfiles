call plug#begin('~/.local/share/nvim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'evidens/vim-twig'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'vim-vdebug/vdebug'
Plug 'tpope/vim-fugitive'
call plug#end()

" KEY MAPPINGS
let mapleader = ","

" jj to go back to normal mode
inoremap jj <esc>

" use enter to add lines below, cherry on the top: "10 enter" gives you 10 lines!
map <Enter> o<ESC>

" vim airline themes https://github.com/vim-airline/vim-airline-themes/tree/master/autoload/airline/themes
let g:airline_theme='murmur'
" use airline to show buffer numbers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Neomake
" When writing a buffer (no delay).
" call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
" call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
" call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing).
call neomake#configure#automake('nrwi', 500)

let NERDTreeShowHidden=1

" disable auto indent
filetype indent off

" config nvim for drupal
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

" correct file syntax highlighting for drupal
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
syntax on

" json highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+

" use node@14 to fix memory leak on phpls plugin
let g:coc_node_path = '/usr/local/Cellar/node/14.7.0/bin/node'

" set to use system clipboard
set clipboard=unnamedplus
