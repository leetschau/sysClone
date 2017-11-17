sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "oh-my-zsh installation complete!"

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "vundle installation complete!"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
echo "fzf installation complete!"

mkdir $HOME/apps
git clone https://github.com/leetschau/sysClone.git $HOME/apps/sysClone
git clone https://leechau@bitbucket.org/leechau/dsnote.git $HOME/apps/dsnote
$HOME/apps/sysClone/sc res
vim +PluginInstall +qall

# run the following srcipts only for VM provision
sudo chsh -s /bin/zsh ubuntu