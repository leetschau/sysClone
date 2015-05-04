curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir $HOME/apps
git clone https://github.com/leetschau/sysClone.git $HOME/apps/sysClone
git clone https://leechau@bitbucket.org/leechau/dsnote.git $HOME/apps/dsnote
$HOME/apps/sysClone/sc res
vim +PluginInstall +qall

# run the following srcipts only for VM provision
chsh -s /bin/zsh
