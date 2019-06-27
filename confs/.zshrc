export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lichao"

plugins=(asdf git gitfast httpie web-search vi-mode autojump copyfile
         colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

source $HOME/apps/todo.txt_cli-2.11.0/todo_completion

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

#. /usr/share/autojump/autojump.zsh
#. $HOME/.asdf/asdf.sh
#. $HOME/.asdf/completions/asdf.bash

. $HOME/apps/miniconda3/etc/profile.d/conda.sh
conda activate base

. $HOME/apps/q/q.plugin.zsh

# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true

source $HOME/.poetry/env
