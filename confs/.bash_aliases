alias vi=nvim
alias vico="$HOME/warez/nvim031.appimage -u $HOME/.config/nvim/coconut/init.coco.vim"
alias ra='ranger'
alias rf='rifle'
alias hg='stack hoogle -- -i'

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

alias sv="sshuttle --dns -r root@172.104.108.163 -x 172.18.0.0/16 -x 127.0.0.1 -D 0/0"
alias lv="pgrep sshuttle"
alias kv="pkill sshuttle"

alias qv="sudo service openvpn start"

# tmux shortcuts
alias tl='tmux ls'
alias ta='tmux attach -t'
alias tn='tmux new -A -s'

# todo.txt shortcuts
alias to="$HOME/apps/todo.txt_cli-2.11.0/todo.sh"

# markdown realtime preview tool
alias mkm="node $HOME/apps/markmon/node_modules/markmon/bin/markmon"

alias va='vagrant'
alias vb='VBoxManage'

alias ssb='spark-submit'
alias jop=$HOME/.joplin-bin/bin/joplin
