#!/bin/sh

set -e

SCRIPTS_DIR="$(dirname $0)"
SRC_DIR="$(realpath "${SCRIPTS_DIR}/..")"

if [[ -f $HOME/.gitconfig ]]; then
  rm $HOME/.gitconfig
fi

ln -s $SRC_DIR/.gitconfig $HOME/.gitconfig
