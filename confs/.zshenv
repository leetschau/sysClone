# Add user-level app path
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/apps/sysClone/scripts"

export NVM_DIR="/home/leo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/leo/.sdkman"
[[ -s "/home/leo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/leo/.sdkman/bin/sdkman-init.sh"

# added by Anaconda3 4.3.1 installer
#export PATH="/home/leo/apps/anaconda3/bin:$PATH"
