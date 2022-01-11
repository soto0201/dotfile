PROMPT='%D{%Y/%m/%d %H:%M:%S} %/
%n %# '

precmd () {print ""}


export HISTFILE=${HOME}/.history
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY

autoload -U compinit

compinit

# 大文字小文字を区別せず補完する

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
export LANG=ja_JP.UTF-8

setopt auto_cd
setopt nobeep

export CBC_COMPILER="/usr/local/opt/cbcgcc/bin/gcc"

# alias
alias ls='ls -G'
alias ll='ls -CFGl'
alias la='ls -CFGla'

alias relog='exec $SHELL -l'

alias yomitan='ssh yomitan -4'

alias juno="jupyter-notebook"

