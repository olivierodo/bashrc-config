if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export VISUAL=vim
export EDITOR="$VISUAL"

ulimit -n 1024

#bin d-r '\C-s'
stty -ixon

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

shopt -s cdspell
PATH=~/bin:/usr/local/git/bin:~/Library/Python/2.7/bin:$PATH
