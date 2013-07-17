syntax on
colorscheme eddie
set ts=2 sts=2 sw=2 expandtab
set t_Co=256
set history=1000
set incsearch
set number
set scrolloff=5
set ignorecase
set encoding=utf-8
au VimEnter * NERDTree
set nocompatible " be iMproved
 filetype off " required!

set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

" let Vundle manage Vundle
" required!
 Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
 Bundle 'vim-ruby/vim-ruby.git'
 Bundle 'tpope/vim-rails.git'
 Bundle 'scrooloose/nerdtree.git'
 Bundle 'tpope/vim-haml.git'
 Bundle 'tpope/vim-markdown.git'
" vim-scripts repos
" non github repos
" ...

 filetype plugin indent on " required!
"
" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
