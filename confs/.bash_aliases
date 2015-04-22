alias va='vagrant'
alias vb='VBoxManage'
alias sa='scrapy'

alias gst='git status'
alias dn='/home/chad/apps/dsnote/donshell.sh'
alias mc='/home/chad/apps/my-calculator.sh'
alias mongod="mongod --config $HOME/docs/mongoHome/mongo.conf"

function briss(){
  java -jar $HOME/apps/briss-0.9/briss-0.9.jar $1
}

function ctls(){
  if test $# -eq 3; then
    csvtool drop $2 $1 | csvtool take $3 -
  else
    echo ctls: csvtool list specified record
    echo Synopsis: ctls '<filename> <startNo> <count>'
  fi
}

