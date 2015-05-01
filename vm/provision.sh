curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir $HOME/apps
git clone https://github.com/leetschau/sysClone.git $HOME/apps/sysClone
$HOME/apps/sysClone/sc res
vim +PluginInstall +qall
chsh -s /bin/zsh
