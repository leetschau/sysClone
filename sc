#!/bin/bash

APP_HOME="$HOME/apps"
CONF_SRC=(".zshrc" ".zshenv" ".bash_aliases" ".vimrc" ".gitconfig"\
  ".tmux.conf" ".xsessionrc"\
  ".oh-my-zsh/themes/lichao.zsh-theme lichao.zsh-theme")
PRIVATE_SRC=(".bash_history" ".zsh_history" ".shadowsocks" ".ssh")

CONF_BAK="$APP_HOME/sysClone/confs"
PRIVATE_BAK="$APP_HOME/sysClone/private"
SCRIPT_DIR="scripts"


backupConf() {
  for i in "${CONF_SRC[@]}"; do
    set $i
    # when $i='.zshrc', `set $i` makes $1='.zshrc', $2=''
    # when $i=['.oh-my-zsh/themes/lichao.zsh-theme', 'lichao.zsh-theme'],
    #   `set $i` makes $1='.oh-my-zsh/themes/lichao.zsh-theme',
    #                  $2='lichao.zsh-theme'
    rsync -ai --ignore-missing-args $HOME/$1 ${CONF_BAK}/$2
  done
  for i in "${PRIVATE_SRC[@]}"; do
    set $i
    rsync -ai --ignore-missing-args $HOME/$1 ${PRIVATE_BAK}/$2
  done
  rsync -ai --ignore-missing-args $APP_HOME/$SCRIPT_DIR .
}

restoreConf() {
  for i in "${CONF_SRC[@]}"; do
    set $i
    src=$2
    if [[ -z $src ]]; then
      src=$1
    fi
    mkdir -p $(dirname $HOME/$1)
    rsync -aiu ${CONF_BAK}/$src $HOME/$1
  done
  for i in "${PRIVATE_SRC[@]}"; do
    set $i
    src=$2
    if [[ -z $src ]]; then
      src=$1
    fi
    rsync -aiu ${PRIVATE_BAK}/$src $HOME
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
