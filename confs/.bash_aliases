alias va='vagrant'
alias vb='VBoxManage'

alias gs='git status'
alias ga='git add -A'
alias gb='git branch'
alias gci='git commit'
alias gd='git diff'
alias gl='git log --stat --decorate'
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%ai%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gco='git checkout'

alias dn="$HOME/apps/dsnote/donshell.sh"
alias mc="$HOME/apps/my-calculator.sh"
alias sv="$HOME/apps/sshuttle/sshuttle --dns -r devops@106.184.7.58 0/0"

alias qv="sudo service openvpn start"

# add path of mongod of this user into sudo PATH, so you can run mongod as `sudo mongod`:
# alias mongod='sudo env PATH=$PATH mongod'
alias -s pdf=evince
alias variety='/home/leo/apps/node-v5.4.1-linux-x64/bin/variety'
alias clj='java -cp ~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar clojure.main'

# tmux shortcuts
alias tl='tmux ls'
alias ta='tmux attach -t'
alias tn='tmux new -A -s'

# markdown realtime preview tool
alias mkm="node $HOME/apps/markmon/node_modules/markmon/bin/markmon"
