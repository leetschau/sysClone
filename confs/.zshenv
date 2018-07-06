# Add user-level app path
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/apps/sysClone/scripts"

export NVM_DIR="/home/leo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# added by Miniconda3 installer
export PATH="/home/leo/apps/miniconda3/bin:$PATH"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/leo/.sdkman"
#[[ -s "/home/leo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/leo/.sdkman/bin/sdkman-init.sh"

export PATH="$PATH:$HOME/apps/firefox"
