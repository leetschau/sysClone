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
alias tn='tmux new -s'

function sv2 {
  echo HTTP_PROXY=socks5://127.0.0.1:2345 HTTPS_PROXY=socks5://127.0.0.1:2345 | parcellite
  ssh -D 2345 devops@106.184.7.58 'vmstat 3 1000'
}

briss(){
  java -jar $HOME/apps/briss-0.9/briss-0.9.jar $1
}


# csv file probe

ctls(){
  if test $# -eq 3; then
    csvtool drop $2 $1 | csvtool take $3 -
  else
    echo ctls: csvtool list specified record
    echo Synopsis: ctls '<filename> <startNo> <count>'
  fi
}

pc(){
  if test $# -eq 2; then
    lines="NR==1||NR==$1"
    awk $lines $2
  else
    echo pc: print csv header and the Nth row
    echo Synopsis: pc N filename.csv
  fi
}

pj(){
  if test $# -eq 2; then
    pc $1 $2 | csvjson -i 4
  else
    echo pc: print csv header and the Nth row in json format
    echo Synopsis: pj N filename.csv
  fi
}
