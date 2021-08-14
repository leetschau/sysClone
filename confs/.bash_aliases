alias setkbm="setxkbmap -option caps:swapescape -option ctrl:swap_lwin_lctl -option ctrl:swap_rwin_rctl && xmodmap -e 'pointer = 3 2 1'"
alias d.="desk ."
alias ts="trans -v"
alias tk="task"
alias pd="podman"

alias ra='ranger'
alias rf='rifle'
alias hg='stack hoogle -- -i'

alias gs='git status'
alias ga='git add -A'
alias gb='git branch'
alias gci='git commit'
alias gd='git diff'
alias gl='git log --stat --decorate'
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%ai%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gco='git checkout'

alias sv="sshuttle --dns -r leo@106.184.7.58 -x 192.168.0.0/16 -x 127.0.0.1 0/0"
alias lv="pgrep sshuttle"
alias kv="pkill sshuttle"

# tmux shortcuts
alias tl='tmux ls'
alias ta='tmux attach -t'
alias tn='tmux new -A -s'

