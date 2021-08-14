export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lichao"

plugins=(alias-finder copydir copyfile command-not-found
         colored-man-pages fasd fzf git gitfast taskwarrior
         zsh-vi-mode zsh-autosuggestions zsh-syntax-highlighting)

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

. $HOME/.asdf/asdf.sh
eval "$(direnv hook zsh)"

show_virtual_env() {
  if [[ -n "$VIRTUAL_ENV" && -n "$DIRENV_DIR" ]]; then
    echo "($(basename $VIRTUAL_ENV)) "
  fi
}
PS1='$(show_virtual_env)'$PS1

alias -s lisp="XDG_CONFIG_HOME=$HOME/.config/vimrcs/lisp nvim $@"
alias -s {R,Rmd}="XDG_CONFIG_HOME=$HOME/.config/vimrcs/R nvim $@"
alias -s {sql,hql}="XDG_CONFIG_HOME=$HOME/.config/vimrcs/sql nvim $@"
alias -s py="XDG_CONFIG_HOME=$HOME/.config/vimrcs/python nvim $@"
alias -s {adoc,asciidoc}="XDG_CONFIG_HOME=$HOME/.config/vimrcs/asciidoc nvim $@"
alias -s {re,ml}="XDG_CONFIG_HOME=$HOME/.config/vimrcs/reasonml nvim $@"
alias -s {fsi,fsx,fs}="XDG_CONFIG_HOME=$HOME/.config/vimrcs/fsharp nvim $@"
alias -s {hs,lhs}="XDG_CONFIG_HOME=$HOME/.config/vimrcs/haskell nvim $@"
alias vi="XDG_CONFIG_HOME=$HOME/.config/vimrcs/text nvim $@"

# zsh-vi-mode config:
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')
