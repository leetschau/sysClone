# Add user-level app path
PATH=$PATH:$HOME/.local/bin

#export NVM_DIR="/home/leo/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/leo/.sdkman"
[[ -s "/home/leo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/leo/.sdkman/bin/sdkman-init.sh"
