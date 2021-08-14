# Setup fzf
# ---------
if [[ ! "$PATH" == */home/leo/.fzf/bin* ]]; then
  export PATH="$PATH:/home/leo/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/leo/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
# source "/home/leo/.fzf/shell/key-bindings.zsh"
source "/usr/share/doc/fzf/examples/key-bindings.zsh"

