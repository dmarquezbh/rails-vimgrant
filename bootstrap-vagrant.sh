#!/usr/bin/env bash

test -f ~/.vimrc && exit

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo "execute pathogen#infect()
syntax on
filetype plugin indent on
Helptags
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
set nu
" > ~/.vimrc

cd ~/.vim/bundle
git clone git://github.com/tpope/vim-rails.git
git clone git://github.com/tpope/vim-bundler.git
git clone git://github.com/vim-scripts/dbext.vim.git


echo "install: --no-rdoc --no-ri
update:  --no-rdoc --no-ri" > ~/.gemrc

\curl -L https://get.rvm.io | bash -s stable --rails
