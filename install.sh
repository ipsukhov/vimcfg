#! /bin/bash

mkdir -p ./autoload ./bundle
curl -LSso ./autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd bundle

git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/klen/python-mode.git
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/tpope/vim-fugitive.git
