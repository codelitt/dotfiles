set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/Vundle.vim'
" My Bundles here:
"
" original repos on github
 Bundle 'vim-ruby/vim-ruby.git'
 Bundle 'tpope/vim-rails.git'
 Bundle 'scrooloose/nerdtree.git'
 Bundle 'tpope/vim-haml.git'
 Bundle 'tpope/vim-markdown.git'
 Bundle 'groenewege/vim-less.git' 
 Bundle 'slim-template/vim-slim.git'
 Bundle 'Blackrush/vim-gocode'
 Bundle 'kchmck/vim-coffee-script'
 Bundle 'Valloric/YouCompleteMe'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'majutsushi/tagbar'
 Bundle 'ap/vim-css-color'
 Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}





 " vim-scripts repos
" non github repos
" ...
  syntax enable
  colorscheme eddie
  set ts=2 sts=2 sw=2 expandtab
  set backspace=2 
  set t_Co=256
  set history=1000
  set incsearch
  set number
  set scrolloff=5
  set ignorecase
  set encoding=utf-8
  au VimEnter * NERDTree
  "filetype off " required!
  filetype plugin on
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
