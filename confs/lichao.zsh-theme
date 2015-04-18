rc=%{$reset_color%}
cy=$fg_bold[cyan]
bl=$fg_bold[blue]
re=$fg_bold[red]
wh=%{$fg_bold[white]%}
ye=$fg_bold[yellow]
gr=$fg_bold[green]
ma=$fg_bold[magenta]

ZSH_THEME_GIT_PROMPT_PREFIX="git("
ZSH_THEME_GIT_PROMPT_SUFFIX="):"
ZSH_THEME_GIT_PROMPT_CLEAN="✔"
ZSH_THEME_GIT_PROMPT_DIRTY="✗"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} M"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} U"

PROMPT='$ye%n$rc @ $cy%m $gr%~ $re$(git_prompt_info)$(git_prompt_status)$rc $wh%t$rc
${wh}[%?]${rc} '
