# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls='ls --color=auto'
alias dir='dir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# Git aliases
alias gst='git st '
alias ga='git a '
alias gaa='git aa'
alias gb='git br '
alias gcm='git c'
alias gcma='git c -a'
alias gph='git ph'
alias gpl='git pl'
alias gplr='git pl --rebase'
alias gbs='git bs'
alias gbb='git bb'
alias gbg='git bg'
alias gdf='git d'
alias go='git go '
alias gfs='git fs'
alias gff='git ff'
alias gfp='git fp'
alias fgo='git fgo '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gl='git l'
alias gla='git la'
alias glr='git lr'
alias glra='git lra'
alias gh='git h'
alias gr='git r'
alias grc='git rc'
alias grs='git rs'
alias gra='git ra'
alias gm='git merge --no-ff'
alias gsth='git stash'
alias gsthp='git stash pop'
alias gsthd='git stash drop'
alias gsths='git stash show'
alias gexport='git archive --format zip --output'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gdel='git branch -D'

alias got='git '
alias get='git '

# My own aliases
alias up='cd ..'
alias apg='sudo apt-get '
alias inst='sudo apt-get install '
alias unist='sudo apt-get remove '
alias autorm='sudo apt-get autoremove'
alias upgd='sudo apt-get upgrade'
alias srch='apt-cache search'

#Navigation
alias dv='dirs -v'
alias pd='pushd'

#Quick projects navigation
alias fj='cd sources/frontend-js-app/'

# Search on wikipedia
wiki() { dig +short txt $1.wp.dg.cx; }

#set new aliases for cd
tag() { alias $1='cd $PWD'; }

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git-flow command-not-found)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/microfed/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

bindkey    "^[[A" history-beginning-search-backward
bindkey    "^[[B" history-beginning-search-forward

# Игнopupoвaть вce пoвтopeнuя команд
setopt  HIST_IGNORE_ALL_DUPS

# Игнopupoвать лишние пpoбeлы
setopt  HIST_IGNORE_SPACE

# Удалять из файла истории пустые строки
setopt  HIST_REDUCE_BLANKS

# bindkey -v    # режим навигации в стиле vi

NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
