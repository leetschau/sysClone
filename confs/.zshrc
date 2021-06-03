export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lichao"

plugins=(alias-finder copydir copyfile command-not-found
         colored-man-pages fasd fzf git gitfast poetry taskwarrior
         vi-mode zsh-autosuggestions zsh-syntax-highlighting)

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

if [ -f ~/.linuxbrew/bin/brew ]; then
  eval $(/home/leo/.linuxbrew/bin/brew shellenv)
fi

. $HOME/.asdf/asdf.sh
eval "$(direnv hook zsh)"

show_virtual_env() {
  if [[ -n "$VIRTUAL_ENV" && -n "$DIRENV_DIR" ]]; then
    echo "($(basename $VIRTUAL_ENV)) "
  fi
}
PS1='$(show_virtual_env)'$PS1

. /usr/share/doc/fzf/examples/key-bindings.zsh

alias -s lisp="XDG_CONFIG_HOME=$HOME/.config/vimrcs/lisp nvim $@"
alias -s {R,Rmd}="XDG_CONFIG_HOME=$HOME/.config/vimrcs/R nvim $@"
alias -s {sql,hql}="XDG_CONFIG_HOME=$HOME/.config/vimrcs/sql nvim $@"
alias -s py="XDG_CONFIG_HOME=$HOME/.config/vimrcs/python nvim $@"
alias -s {adoc,asciidoc}="XDG_CONFIG_HOME=$HOME/.config/vimrcs/asciidoc nvim $@"
alias vi="XDG_CONFIG_HOME=$HOME/.config/vimrcs/text nvim $@"
