## env vars
export EDITOR=vim
export PAGER=lv
export GIT_PAGER="lv -c"
#export LC_ALL=C
#export LANG=C
export LANG=ja_JP.UTF-8
export SHELL=/bin/zsh

#JAVA
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_282`
export JAVA_HOME=`/usr/libexec/java_home -v 11`

#g++
alias g++='/usr/local/bin/g++'

#python
#if command -v pyenv 1>/dev/null 2>&1; then
eval "$(pyenv init -)"
#fi

### bindkey
bindkey -e

### aliases
alias ll='ls -lGhat'

### https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL='sohei@copper(maybe) >'
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

### ruby
eval "$(rbenv init - zsh)"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

### node.js
export NVM_DIR="/Users/sohei/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
