set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
 Bundle 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on



 " vim-scripts repos
" non github repos
" ...
"

  "Powerline setting
  set laststatus=2

"Colours, syntaxes and vim settings
  syntax enable
  colorscheme solarized
  set background=dark
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
  "
" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
