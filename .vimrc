set nu
set encoding=utf-8
set noshowmode
set laststatus=2
let mapleader=','
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

nnoremap <Leader>> gt
nnoremap <Leader>< gT
nnoremap <Leader>nt :tabedit 
nnoremap <Leader>dt :tabclose<cr>

inoremap <Leader>b ****<Esc>2ha
inoremap <Leader>i **<Esc>ha

" vim-powered terminal in split window
map <Leader>t :term ++close<cr>

" plugin installs
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'srcery-colors/srcery-vim'
call plug#end()

source ~/.vim/coc.vim

colorscheme srcery

let g:lightline = {'colorscheme': 'srcery'}
