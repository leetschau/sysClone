#!/bin/bash

configs=(".zshrc" ".zshenv" ".bash_aliases" ".vimrc" ".gitconfig"\
  ".tmux.conf" ".xsessionrc"\
  ".oh-my-zsh/themes/lichao.zsh-theme lichao.zsh-theme"\
  ".i3/config .i3.config" )

backupConf() {
  for i in "${configs[@]}"; do
    set $i
    echo $HOME/$1 '=>' confs/$2
    rsync -au --ignore-missing-args $HOME/$1 confs/$2
  done
}

restoreConf() {
  for i in "${configs[@]}"; do
    set $i
    src=$2
    if [[ -z $src ]]; then
      src=$1
    fi
    echo confs/$src '=>' $HOME/$1
    rsync -au confs/$src $HOME/$1
  done
}

OLDIFS=$IFS
IFS=' '

case "$1" in
    bak)
        backupConf
        ;;
    res)
        restoreConf
        ;;
    *)
        echo "Usage: $0 {bak|res}"
        exit 2
esac

IFS=$OLDIFS
exit 0
