export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lichao"

plugins=(asdf git gitfast httpie web-search copyfile sudo 
         colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)

# optional plugins:
# vi-mode

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

source $HOME/apps/zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "changyuheng/fz", defer:1
zplug "rupa/z", use:z.sh
zplug "cal2195/q", use:"q.plugin.zsh"
zplug "jamesob/desk", as:command, use:desk

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true

eval "$(direnv hook zsh)"

source $HOME/.poetry/env

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/leo/apps/miniconda3_4.7.11/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/leo/apps/miniconda3_4.7.11/etc/profile.d/conda.sh" ]; then
        . "/home/leo/apps/miniconda3_4.7.11/etc/profile.d/conda.sh"
    else
        export PATH="/home/leo/apps/miniconda3_4.7.11/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
