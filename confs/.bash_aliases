alias vi="$HOME/apps/nvim.appimage"
alias ra='ranger'
alias rf='rifle'

alias dn=$HOME/apps/dsnote/donshell.sh
alias ss="source $HOME/.sdkman/bin/sdkman-init.sh"

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

alias qv="sudo service openvpn start"

# tmux shortcuts
alias tl='tmux ls'
alias ta='tmux attach -t'
alias tn='tmux new -A -s'

# markdown realtime preview tool
alias mkm="node $HOME/apps/markmon/node_modules/markmon/bin/markmon"

alias va='vagrant'
alias vb='VBoxManage'

alias ssb='spark-submit'
