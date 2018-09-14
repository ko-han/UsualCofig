alias grep='grep --color'
alias egrep='egrep --color'

ls --color=auto >/dev/null 2>&1
if [ $? == 0 ]; then
    alias ls='ls --color=auto'
else
    alias ls='ls -G'
fi

alias la='ls -A'
alias ll='ls -aFl'
alias cls='clear'
alias vi='vim'
alias clsh='history -c'

alias sv='brew services'
alias cask='brew cask'

alias gitam='git commit -a -m'
alias gitm='git commit -m'
alias gits='git status'
alias gita='git add'
alias gitl='git log --oneline --all --graph --decorate  $*'
alias gitd='git pull --rebase'
alias gitu='git push'
alias gitc='git checkout'

alias ipy='ipython'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

if type ccat >/dev/null 2>&1; then
    alias cat='ccat'
fi

if type icdiff >/dev/null 2>&1; then
    alias diff='icdiff'
fi

if which pyenv >/dev/null 2>&1;then
    eval "$(pyenv init -)";
    alias py34="pyenv shell 3.4.8; echo use python 3.4.8"
    alias py35="pyenv shell 3.5.5; echo use python 3.5.5"
    alias py="pyenv shell 3.6.6; echo use python 3.6.6"
    alias py2="pyenv shell 2.7.15; echo use python 2.7.15"
fi

if which pyenv-virtualenv-init >/dev/null 2>&1; then eval "$(pyenv virtualenv-init -)"; fi
