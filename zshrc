## env vars
export EDITOR=vim
export PAGER=lv
export GIT_PAGER="lv -c"
#export LC_ALL=C
#export LANG=C
export LANG=ja_JP.UTF-8

#JAVA
#export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

#python
alias python=python3
alias pip=pip3

export PATH=$HOME/anaconda3/bin:$PATH

### bindkey
bindkey -e

### aliases
alias ll='ls -lGhat'

### https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL='m@copper(maybe) >'
prompt pure

### history
setopt extended_history               # write time
setopt hist_ignore_all_dups
setopt share_history
setopt inc_append_history
HISTFILE=$HOME/.zsh-history           # save history
HISTSIZE=10000                       # history size in memory
SAVEHIST=10000                       # save history size
function history-all { history -E 1 } # output all history

### autoloads
autoload -U compinit
compinit -u
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:hosts' hosts $hosts
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select=1

### misc
WORDCHARS='*?-.[]~=&;!#$%^(){}<>'
setopt auto_cd            # omittable 'cd'
setopt auto_pushd         # enable 'cd -[tab]'
setopt pushd_ignore_dups
setopt print_eight_bit    # enable complietion 8-bit file name
setopt no_flow_control    # disable Ctr+s
setopt ignoreeof          # disable Ctr+d
setopt list_packed        # pack completion list
setopt nolistbeep         # cut beep off at completion

### functions

### rbenv
eval "$(rbenv init - zsh)"

### nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
