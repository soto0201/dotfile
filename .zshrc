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
# これでtmuxでも履歴が共有できるらしい
setopt share_history
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
alias ls='ls --color=auto -G'
alias ll='ls --color=auto -CFGl'
alias la='ls --color=auto -CFGla'

alias relog='exec $SHELL -l'

alias yomitan='ssh yomitan -4'

alias juno="jupyter-notebook"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/soto/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/soto/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/soto/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/soto/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

