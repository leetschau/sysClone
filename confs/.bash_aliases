alias va='vagrant'
alias vb='VBoxManage'

alias gs='git status'
alias ga='git add -A'
alias gb='git branch'
alias gc='git commit -m'
alias gd='git diff'
alias gl='git log --stat'
alias go='git checkout'

alias dn="$HOME/apps/dsnote/donshell.sh"
alias mc="$HOME/apps/my-calculator.sh"
alias sv="$HOME/apps/sshuttle/sshuttle --dns -r root@106.184.7.58 0/0"

# add path of mongod of this user into sudo PATH, so you can run mongod as `sudo mongod`:
# alias mongod='sudo env PATH=$PATH mongod'
alias -s pdf=evince


# tmux shortcuts
alias tl='tmux ls'
alias ta='tmux attach -t'
alias tn='tmux new -s'

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
