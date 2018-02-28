# Add user-level app path
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/apps/sysClone/scripts"

#export NVM_DIR="/home/leo/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# added by Anaconda3 4.3.1 installer
export PATH="$HOME/apps/miniconda3/bin:$PATH"

export SPARK_HOME="$HOME/apps/spark-2.2.0-bin-hadoop2.7"
export PATH=$PATH:$SPARK_HOME/bin

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/leo/.sdkman"
#[[ -s "/home/leo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/leo/.sdkman/bin/sdkman-init.sh"
