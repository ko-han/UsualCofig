trans='\[\e[m\]'
dark='\[\e[0;30m\]'
red='\[\e[0;31m\]'
green='\[\e[0;32m\]'
yellow='\[\e[0;33m\]'
blue='\[\e[0;34m\]'
purple='\[\e[0;35m\]'
greenblue='\[\e[0;36m\]'
white='\[\e[0;37m\]'
git_branch='`B=$(git branch 2>/dev/null | sed -e "/^ /d" -e "s/* \(.*\)/\1/"); [[ "$B" != "" ]]\
&& echo -n -e "($B)"`'

PS1="[$green\u$greenblue@$green\h$trans:$blue\w$trans]$purple$git_branch$red\$$trans "