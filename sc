#!/bin/bash

# user-defined section
configs=(".zshrc" ".zshenv" ".bash_aliases" ".vimrc" ".gitconfig"\
  ".tmux.conf" ".xsessionrc"\
  ".oh-my-zsh/themes/lichao.zsh-theme lichao.zsh-theme")
APP_HOME="$HOME/apps"

# app-defined section
CONF_DIR="$APP_HOME/sysClone/confs"
SCRIPT_DIR="scripts"

# functions

backupConf() {
  for i in "${configs[@]}"; do
    set $i
    rsync -ai --ignore-missing-args $HOME/$1 ${CONF_DIR}/$2
  done
  rsync -ai --ignore-missing-args $APP_HOME/$SCRIPT_DIR .
}

restoreConf() {
  for i in "${configs[@]}"; do
    set $i
    src=$2
    if [[ -z $src ]]; then
      src=$1
    fi
    rsync -aiu ${CONF_DIR}/$src $HOME/$1
  done
  rsync -aiu $SCRIPT_DIR $APP_HOME
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
