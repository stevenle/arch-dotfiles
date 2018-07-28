#!/bin/sh

set -ex

SCRIPTS_DIR="$(dirname $0)"
SRC_DIR="$(realpath "${SCRIPTS_DIR}/..")"

if [[ -d $HOME/.vim ]]; then
  rm -rf $HOME/.vim
fi

# Set up vim.
mkdir -p \
  $HOME/.vim/autoload \
  $HOME/.vim/backups \
  $HOME/.vim/bundle \
  $HOME/.vim/swaps \
  $HOME/.vim/undo
ln -s \
  $SRC_DIR/.vim/after \
  $SRC_DIR/.vim/skel \
  $SRC_DIR/.vim/snippets \
  $HOME/.vim
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install vim pathogen plugins.
cd $HOME/.vim/bundle
git clone https://github.com/ctrlpvim/ctrlp.vim.git
