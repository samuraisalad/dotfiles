export PATH=$HOME/.rbenv/bin:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PYTHONPATH="/usr/local/lib/python2.7/site-packages/:$PYTHONPATH"
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
export PATH=$HOME/.nodebrew/current/bin:$PATH
eval "$(rbenv init -)"

setopt SHARE_HISTORY

setopt AUTO_CD

setopt AUTO_PUSHD
autoload -Uz compinit
compinit

bindkey -e

autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

PROMPT="[%n@%m](%D) %# "

setopt IGNORE_EOF
setopt NO_FLOW_CONTROL
setopt NO_BEEP

autoload -Uz compinit
compinit

zstyle ':completion:*:default' menu select=2

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

bindkey '^r' history-incremental-pattern-search-backward
bindkey '^s' history-incremental-pattern-search-forward

autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
bindkey "^o" history-beginning-search-backward-end

autoload -Uz add-zsh-hook
autoload -Uz chpwd_recent_dirs cdr
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':chpwd:*' recent-dirs-max 200
zstyle ":chpwd:*" recent-dirs-default true

autoload -Uz zmv

#autoload -Uz add-zsh-hook
#autoload -Uz vcs_info

#zstyle ':vcs_info:*' formats '(%s)-[%b]'
#zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'

#function _update_vcs_info_msg() {
# psvar=()
# LANG=en_US.UTF-8 vcs_info
# psvar[1]= "$vcs_info_msg_0_"
#}
#add-zsh-hook precmd _update_vcs_info_msg
#RPROMPT="[%~] %v"
RPROMPT="[%~]"

[[ -f $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ls='ls -F'
alias la='ls -a'
alias ll='ls -l'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g N='> /dev/null'
alias -g V='| vim -R -'
alias -g P=' --help | less'

alias zmv='noglob zmv -W'

alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

