cat << EOF > /etc/apt/sources.list
deb http://mirrors.ustc.edu.cn/ubuntu/ trusty main universe restricted multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ trusty main universe restricted multiverse
EOF
apt-get update
apt-get install -y zsh git vim autojump curl tree tmux git-flow