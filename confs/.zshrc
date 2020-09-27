export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lichao"

plugins=(alias-finder copydir copyfile command-not-found
         colored-man-pages git gitfast taskwarrior vi-mode
         z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP

export LC_ALL=en_US.UTF-8

function vi() {
  case $VIMODE in
    asciidoc) XDG_CONFIG_HOME=$HOME/.config/vimrcs/asciidoc nvim $@ ;;
    python) XDG_CONFIG_HOME=$HOME/.config/vimrcs/python nvim $@ ;;
    *) XDG_CONFIG_HOME=$HOME/.config/vimrcs/text nvim $@ ;;
  esac
}

eval $(/home/leo/.linuxbrew/bin/brew shellenv)
eval "$(direnv hook zsh)"

show_virtual_env() {
  if [[ -n "$VIRTUAL_ENV" && -n "$DIRENV_DIR" ]]; then
    echo "($(basename $VIRTUAL_ENV)) "
  fi
}
PS1='$(show_virtual_env)'$PS1

