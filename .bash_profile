if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export ANT_HOME=/usr/share/ant
export PATH=${PATH}:/Users/keaz/Downloads/adt-bundle-mac-x86_64-20140702/sdk/platform-tools:/Users/keaz/Downloads/adt-bundle-mac-x86_64-20140702/sdk/tools:$ANT_HOME/bin
ulimit -n 1024

bin d-r '\C-s'
stty -ixon

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
} 

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

eval "$(grunt --completion=bash)"

export NVM_DIR="/Users/keaz/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
