# zshの設定
    # PATHの設定(homebrew+virtualwrapper)
        export PATH=/opt/homebrew/bin:/sbin:/bin:/usr/bin:/usr/texbin:/usr/bin/openssl:$PATH
        export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3
        export VIRTUALENVWRAPPER_VIRTUALENV=/opt/homebrew/bin/virtualenv
        # 文字コードの設定
        export LANG=ja_JP.UTF-8
        # 補完機能を有効にする
        autoload -U compinit; compinit
        # 大文字小文字を区別せず補完する
        zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
        # コマンドの履歴を保存するファイル
        HISTFILE=~/.history
        HISTSIZE=10000
        SAVEHIST=10000
        setopt hist_ignore_dups

        # virtualenv の設定
        # ~/.zshrc に以下の設定を追加。
        # 下記if文で指定した WORKON_HOME に仮想環境が構築される。
        # 不要になったらここを削除しよう。
        if [ -f /opt/homebrew/bin/virtualenvwrapper.sh ]; then
            export WORKON_HOME=$HOME/.virtualenvs
            source /opt/homebrew/bin/virtualenvwrapper.sh
        fi

export PATH="/usr/local/bin:$PATH"

export PATH="/usr/local/opt/texinfo/bin:$PATH"

export PYENV_ROOT=${HOME}/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
		export PATH=${PYENV_ROOT}/bin:$PATH
			eval "$(pyenv init -)"
fi

setopt IGNOREEOF

export EDITOR=vim

# alias
alias ll='ls -l'
alias lla='ls -la'
alias ls='ls -G'
alias la='ls -a'
alias relog='exec $SHELL -l'
alias rust='cd ~/Documents/Rust/projects && ls'
alias maketex='sh ~/.textmp/maketex.sh'
alias memo='emacs ~/Documents/note/`date "+%Y"`/note/memo/`date "+%m_%d"_memo.md`'
alias view_memo='view ~/Documents/note/`date "+%Y"`/note/memo/`date "+%m_%d"_memo.md`'
alias todo='emacs ~/Documents/note/2019/note/todo/todo.md'
alias view_todo='view ~/Documents/note/2019/note/todo/todo.md'
alias mkdirc='(){mkdir $1 && cd $1}'
alias ls='ls -Gl'
alias la='ls -Gla'
alias relog='exec $SHELL -l'
alias yomitan='ssh yomitan -4'
alias sof='ssh sof -4'
alias repo='cd ~/Documents/tex/'
alias note='cd ~/Documents/note/`date "+%Y"`'
alias juno="jupyter-notebook"
alias 3timer="sleep 180; osascript -e 'display notification "時間になりました" sound name "Ping" '"
