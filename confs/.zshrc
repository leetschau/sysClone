export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lichao"

bindkey -v

plugins=(git, autojump, git-flow-completion)

source $ZSH/oh-my-zsh.sh

source $HOME/apps/todo.txt_cli-2.11.0/todo_completion
#complete -F _todo to

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP

. /usr/share/autojump/autojump.zsh
