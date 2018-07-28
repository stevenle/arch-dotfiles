#!/bin/sh

set -e

GO_VERSION=1.10.3

cd /tmp
wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz
tar xvzf go${GO_VERSION}.linux-amd64.tar.gz
sudo mv go $HOME/bin/go

if [[ -d $HOME/.vim/bundle ]]; then
  cd $HOME/.vim/bundle
  git clone https://github.com/fatih/vim-go.git
fi
