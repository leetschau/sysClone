# mongodb
PATH=$PATH:/opt/mongodb-linux-x86_64-ubuntu1404-3.0.3/bin

# nodejs
PATH=$PATH:$HOME/apps/node-v0.12.7-linux-x64/bin
#PATH=$PATH:/opt/node-v0.12.4-linux-x64/bin

# rvm, for octopress
PATH=$PATH:$HOME/.rvm/bin
source $HOME/.rvm/scripts/rvm

export PATH

# leiningen
# PATH=$HOME/apps:$PATH

# pyenv
# PATH=$HOME/.pyenv/bin:$PATH
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# nvm
# source ~/.nvm/nvm.sh

# git-flow
# source ~/.git-flow-completion.zsh

# gvm
# #export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386
# #source ~/.gvm/bin/gvm-init.sh

# Java
# jrun() {
#     javac $1
#     $JAVA_HOME/bin/java $(basename $1 .java)
# }
# getmeta() { unzip -q -c "$*" META-INF/MANIFEST.MF } 

# email
# MAIL=/var/spool/mail/chad && export MAIL

# alias loj='export JAVA_HOME=/home/chad/apps/jdk1.6.0_45;export PATH=$PATH:$JAVA_HOME/bin'
# loj means load Oracle JDK
