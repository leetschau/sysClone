#!/bin/bash

# user-defined section
configs=(".zshrc" ".zshenv" ".bash_aliases" ".vimrc" ".gitconfig"\
  ".tmux.conf" ".xsessionrc"\
  ".oh-my-zsh/themes/lichao.zsh-theme lichao.zsh-theme"\
  ".i3/config .i3.config" )
APP_HOME="$HOME/apps"

# app-defined section
CONF_DIR="confs"
SCRIPT_DIR="myscripts"

# functions

backupConf() {
  for i in "${configs[@]}"; do
    set $i
    rsync -avu --ignore-missing-args $HOME/$1 ${CONF_DIR}/$2
  done
  rsync -avu --ignore-missing-args $APP_HOME/$SCRIPT_DIR .
}

restoreConf() {
  for i in "${configs[@]}"; do
    set $i
    src=$2
    if [[ -z $src ]]; then
      src=$1
    fi
    rsync -avu ${CONF_DIR}/$src $HOME/$1
  done
  rsync -avu $SCRIPT_DIR $APP_HOME/$SCRIPT_DIR
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
