cat << EOF > /etc/apt/sources.list
deb http://mirrors.ustc.edu.cn/ubuntu/ trusty main universe restricted multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ trusty main universe restricted multiverse
EOF
aptitude update
aptitude install -y zsh git vim autojump curl tree tmux git-flow

# run the following srcipts only for VM provision
HOSTNAME=workserver
cat $HOSTNAME > /etc/hostname
hostname -F $HOSTNAME
